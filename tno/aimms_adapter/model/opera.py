import base64
import json
import subprocess
import time
from uuid import uuid4

import requests
import rq as rq
from esdl.esdl_handler import EnergySystemHandler
from minio import S3Error

from tno.aimms_adapter.model.model import Model, ModelState
from tno.aimms_adapter.settings import EnvSettings
from tno.aimms_adapter.types import ModelRunInfo, OperaAdapterConfig, ModelRun
from tno.aimms_adapter import executor
from tno.aimms_adapter.universal_link.Uniform_ESDL_AIMMS_link import handler
from tno.aimms_adapter.universal_link.Write_TO_ESDL import OutputESDL
from tno.aimms_adapter.universal_link.universal_link import UniversalLink
from tno.shared.log import get_logger

logger = get_logger(__name__)


class Opera(Model):
    def request(self):

        model_run_id = str(uuid4())
        self.model_run_dict[model_run_id] = ModelRun(
            state=ModelState.ACCEPTED,
            config=None,
            result=None,
        )
        if len(self.model_run_dict.keys()) > 1:
            # there is already a model running
            self.model_run_dict[model_run_id].state = ModelState.PENDING
            return ModelRunInfo(
                state=ModelState.PENDING,
                reason="A model is already running",
                model_run_id = model_run_id
            )

        return ModelRunInfo(
            state=self.model_run_dict[model_run_id].state,
            model_run_id=model_run_id,
        )

    def start_aimms_model(self, config: OperaAdapterConfig, model_run_id):
        # logger.info(f"Loading ESDL from store at {config.input_esdl_file_path}")
        # try:
        #     input_esdl_bytes = self.load_from_minio(config.input_esdl_file_path)
        #     if input_esdl_bytes is None:
        #         logger.error(f"Error retrieving {config.input_esdl_file_path} from Minio")
        #         return ModelRunInfo(
        #             model_run_id=model_run_id,
        #             state=ModelState.ERROR,
        #             reason=f"Error retrieving {config.input_esdl_file_path} from Minio"
        #         )
        # except S3Error as e:
        #     logger.error(f"Error retrieving {config.input_esdl_file_path} from Minio")
        #     return ModelRunInfo(
        #         model_run_id=model_run_id,
        #         state=ModelState.ERROR,
        #         reason=f"Error retrieving {config.input_esdl_file_path} from Minio"
        #     )

        # input_esdl = input_esdl_bytes.decode('utf-8')

        # esh = EnergySystemHandler()
        # input_esdl = esh.load_file('test/output_Tholen-simple v04-26kW_output.esdl')
        inputfilename = 'test/output_Tholen-simple v04-26kW_output.esdl'

        print('ESDL:', inputfilename)

        # convert ESDL to MySQL
        logger.info("Converting ESDL using Universal Link")
        # ul = handler(host=EnvSettings.db_host(), database=EnvSettings.db_name(),
        #                    user=EnvSettings.db_user(), password=EnvSettings.db_password())
        ul = handler(inputfilename)
        # success, error = ul.esdl_to_db(input_esdl)
        # if not success:
        #     logger.error(f"Error executing Universal link: {error}")
        #     return ModelRunInfo(
        #         model_run_id=model_run_id,
        #         state=ModelState.ERROR,
        #         reason=error
        #     )

        logger.info("ESDL Database created for use by AIMMS")
        # start aimms via subprocess
        print(f"AIMMS binary at {EnvSettings.aimms_exe_path()}")
        print(f"AIMMS model at {EnvSettings.aimms_model_path()}")
        print(f"AIMMS start procedure {EnvSettings.aimms_procedure()}")

        requests.post(EnvSettings.teacos_API_url())
        time.sleep(20)


        outputfilename = 'test/Test_Output.esdl'
        OutputESDL(EnvSettings.db_name(), inputfilename ,outputfilename)

        logger.info("AIMMS has finished, collecting results...")
        return ModelRunInfo(model_run_id=model_run_id, state=ModelState.SUCCEEDED, )

    # @staticmethod
    # def monitor_aimms_progress(simulation_id, model_run_id):
    # pass

    def threaded_run(self, model_run_id, config):
        print("Threaded_run:", config)

        # start AIMMS run
        start_aimms_info = self.start_aimms_model(config, model_run_id)
        if start_aimms_info.state == ModelState.RUNNING:
            # monitor AIMMS progress
            #monitor_essim_progress_info = Opera.monitor_essim_progress(simulation_id, model_run_id)
            #if monitor_essim_progress_info.state == ModelState.ERROR:
            #    return monitor_essim_progress_info
            return start_aimms_info
        else:
            return start_aimms_info

        ## Monitor KPI progress
        #monitor_kpi_progress_info = Opera.monitor_kpi_progress(simulation_id, model_run_id)
        #return monitor_kpi_progress_info

    def run(self, model_run_id: str):

        res = Model.run(self, model_run_id=model_run_id)

        if model_run_id in self.model_run_dict and self.model_run_dict[model_run_id].state == ModelState.RUNNING:
            config: OperaAdapterConfig = self.model_run_dict[model_run_id].config
            executor.submit_stored(model_run_id, self.threaded_run, model_run_id, config)
            res.state = self.model_run_dict[model_run_id].state
            return res
        else:
            return ModelRunInfo(
                model_run_id=model_run_id,
                state=ModelState.ERROR,
                reason="Error in Opera.run(): model_run_id unknown or model is in wrong state"
            )

    def status(self, model_run_id: str):
        if model_run_id in self.model_run_dict:
            if not executor.futures.done(model_run_id):
                return ModelRunInfo(
                    state=self.model_run_dict[model_run_id].state,
                    model_run_id=model_run_id,
                    reason=f"executor.futures._state: {executor.futures._state(model_run_id)}"
                )
            else:
                #print("executor.futures._state: ", executor.futures._state(model_run_id))   # FINISHED
                future = executor.futures.pop(model_run_id)
                executor.futures.add(model_run_id, future)   # Put it back on again, so it can be retreived in results
                model_run_info = future.result()
                if model_run_info.result is not None:
                    print('Model execution result:', model_run_info.result)
                else:
                    logger.warning("No result in model_run_info variable")
                return model_run_info
        else:
            return ModelRunInfo(
                model_run_id=model_run_id,
                state=ModelState.ERROR,
                reason="Error in ESSIM.status(): model_run_id unknown"
            )

    def process_results(self, result):
        return json.dumps(result)

    def results(self, model_run_id: str):
        # Issue: if status already runs executor.future.pop, future does not exist anymore
        if executor.futures.done(model_run_id):
            if model_run_id in self.model_run_dict:
                future = executor.futures.pop(model_run_id)
                model_run_info = future.result()
                if model_run_info.result is not None:
                    print(model_run_info.result)
                else:
                    logger.warning("No result in model_run_info variable")

                self.model_run_dict[model_run_id].state = model_run_info.state
                if model_run_info.state == ModelState.SUCCEEDED:
                    self.model_run_dict[model_run_id].result = model_run_info.result

                    Model.store_result(self, model_run_id=model_run_id, result=model_run_info.result)
                else:
                    self.model_run_dict[model_run_id].result = {}

                return Model.results(self, model_run_id=model_run_id)
            else:
                return ModelRunInfo(
                    model_run_id=model_run_id,
                    state=ModelState.ERROR,
                    reason="Error in ESSIM.results(): model_run_id unknown"
                )
        else:
            return Model.results(self, model_run_id=model_run_id)
