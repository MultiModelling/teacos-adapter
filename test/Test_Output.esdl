<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="e4e87ec0-2c1c-4569-afc8-752bbddadbcc" description="" esdlVersion="v2210" name="New Energy System" version="14">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="bc6a175b-6e55-44b4-a664-d0fda633920a">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="543ca49f-c1bf-4f20-95e6-3dd6e2bc2e28">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in kWh per kW" unit="WATTHOUR" perMultiplier="KILO" physicalQuantity="ENERGY" multiplier="KILO" perUnit="WATT" id="eb07bccb-203f-407e-af98-e687656a221d"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" unit="JOULE" physicalQuantity="ENERGY" multiplier="GIGA" id="1a81a2e7-6ad4-472a-b8e5-973f82f454e9"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="c505ce51-a17b-4fda-9ebf-dcdd73b2e900">
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="279b10f4-c971-454d-9390-60a6970ab471">
        <cost xsi:type="esdl:SingleValue" value="0.9" id="31ef506d-e259-4b48-a8c2-9a926586a32a"/>
      </carrier>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="618bbae6-25a7-46d0-bd7d-c1eb70cb2d31">
    <area xsi:type="esdl:Area" name="Tholen" id="GM0716" scope="MUNICIPALITY">
      <KPIs xsi:type="esdl:KPIs" description="" id="TotalExportedEnergyID">
        <kpi xsi:type="esdl:DoubleKPI" id="ce11a9af-409e-4e48-a3f9-7ae44a2bbb7c" name="Total energy production [Joule]" value="103729392784.19324">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" id="4da857c1-44a5-4f6d-9d94-e904a2aae78d"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="8b847e8b-c072-4e0e-a53e-5f0f97049c89" name="Total energy production, per energy carrier [Joule] - Electricity" value="103729392784.19324">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="JOULE"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="6d285563-b4df-41a7-aaf1-85c69173a287" name="Total imported energy [Joule]" value="55252195921.00542">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" id="25cc57d2-1562-4f04-bc95-9046b0108da1"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="97f987de-c635-4008-9042-807b00322f01" name="Total imported energy [Percentage]" value="55.2565529002016">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT" id="908289b7-a71e-4e6b-a8b4-64fc76ade432"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="54516b25-8267-4bac-8ca6-7adc74550932" name="Number of hours with energy import [Hour]" value="6299.0">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="HOUR" id="05f10720-6ee7-42d1-af5b-bbeddb835e7a"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="15afecfe-5625-4252-87c0-7f9484dabcc6" name="Percentage of hours with energy import [Percentage]" value="71.90639269406392">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT" id="485e9697-f33b-47b1-9408-a8b22d820475"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="78295e29-3554-4560-94a2-d6906ea99b0c" name="Total imported energy [Joule] - Electricity" value="55252195921.00542">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="JOULE"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="b39913f0-3082-40a5-8b32-b6e64654dcc2" name="Total imported energy [Percentage] - Electricity" value="55.2565529002016">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="PERCENT"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="d955682e-dfcb-4de8-b865-e7bc7bc06811" name="Number of hours with energy import [Hour] - Electricity" value="6299.0">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="HOUR"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="d3bb7f93-9fd6-409f-8c76-955cfb3e58f5" name="Percentage of hours with energy import [Percentage] - Electricity" value="71.90639269406392">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="PERCENT"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="f3114e8d-4e31-431e-abe9-98805f436b98" name="Total exported energy [Joule]" value="58989473705.19938">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" id="13d92d8b-e301-49d5-ab64-d920edb613f3"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="55cd6901-1970-4e88-9f10-739f8404a5b0" name="Total exported energy [Percentage]" value="56.86861951262522">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT" id="45d272e0-608c-449f-af8e-74232e880533"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="f4a6c3c5-3c7f-44cc-ab73-e99de62eea26" name="Number of hours with energy export [Hour]" value="2460.0">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="HOUR" id="60d7783a-f860-4cac-ba0a-137fad5da738"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="104f4dd6-ed6c-489b-ab4f-c1c7a998e1aa" name="Percentage of hours with energy export [Percentage]" value="28.08219178082192">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT" id="53d8be11-976f-4d4b-a74c-2d9169893be8"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="b933c287-0ae1-42fe-85f3-61ec177e9fdc" name="Total exported energy, per energy carrier [Joule] - Electricity" value="58989473705.19938">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="JOULE"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="66c446a3-9b41-4753-bed4-c736ece0dd3e" name="Total exported energy, per energy carrier [Percentage] - Electricity" value="56.86861951262522">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="PERCENT"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="23ba4a6e-0391-42ca-bd33-8b42a5c46254" name="Number of hours with energy export, per energy carrier [Hour] - Electricity" value="2460.0">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="HOUR"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="f4de27b4-e59f-48d1-9489-0d0a61e303b8" name="Percentage of hours with energy export, per energy carrier [Percentage] - Electricity" value="28.08219178082192">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Electricity" unit="PERCENT"/>
        </kpi>
      </KPIs>
      <asset xsi:type="esdl:PVInstallation" name="PVInstallation_1907" surfaceArea="7979" id="1907945a-5ffe-4c08-b9ce-9bc8689f943c" power="40000.0" state="ENABLED">
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.541484198065596" lon="4.227204322814942"/>
            <point xsi:type="esdl:Point" lat="51.541857872008826" lon="4.228159189224244"/>
            <point xsi:type="esdl:Point" lat="51.54112386671437" lon="4.228985309600831"/>
            <point xsi:type="esdl:Point" lat="51.54072349520013" lon="4.22801971435547"/>
          </exterior>
        </geometry>
        <costInformation xsi:type="esdl:CostInformation" id="c1ec6af9-b62b-40db-acdc-a84a7d2692ee">
          <investmentCosts xsi:type="esdl:SingleValue" value="871.0" id="2731c2a1-f70b-4db8-9f70-f531121d3745">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" unit="EURO" perMultiplier="KILO" physicalQuantity="COST" perUnit="WATT" id="ed551dad-660a-4f65-84c6-3e108241a178"/>
          </investmentCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="d045e8d3-7f7b-40c5-a756-8c6534d6be2b" name="NewRangedConstraint" attributeReference="power">
          <range xsi:type="esdl:Range" name="PV installed capacity range" id="642eb1f7-22c8-4131-bf90-ff6e387a4a68" minValue="20000.0" maxValue="40000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in Watt" unit="WATT" id="2b8f2157-4f95-4b2d-8944-cedc43a2cad9" physicalQuantity="POWER"/>
          </range>
        </constraint>
        <KPIs xsi:type="esdl:KPIs" id="06fccdbd-b924-4685-b9d5-467e0eaaf1c0">
          <kpi xsi:type="esdl:IntKPI" id="TEACOS_Was_Optional_PVInstallation_1907" name="1" value="1"/>
          <kpi xsi:type="esdl:IntKPI" id="TEACOS_Inversted_W_PVInstallation_1907" name="TEACOS_Inversted_W_PVInstallation_1907" value="40000"/>
        </KPIs>
        <port xsi:type="esdl:OutPort" connectedTo="ad335aa5-2ebc-4148-85ac-b4276f64b7fc" id="4c3f787e-df4f-4ab8-93ab-93dcde9827e2" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" id="6fc38691-9d02-4f58-bfde-455eb641cb82" database="energy_profiles" host="http://influxdb" startDate="2019-01-01T00:00:00.000000+0100" field="Zon_deBilt" measurement="standard_profiles" filters="" port="8086" multiplier="28813.72" endDate="2020-01-01T00:00:00.000000+0100">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in kWh" unit="WATTHOUR" physicalQuantity="ENERGY" multiplier="KILO" id="9d70cc41-750c-4c77-9f80-4bd89bc9020b"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" name="ElectricityDemand_2f52" id="2f528ef6-186e-4937-9967-d277f78e858a">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.54339257209525" lon="4.229489564895631"/>
        <port xsi:type="esdl:InPort" connectedTo="bdb51e39-6cbf-48b1-84ab-bc342c4449f0" id="54c99cc4-fbc2-4d94-bc78-994eedb2cded" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="In">
          <profile xsi:type="esdl:InfluxDBProfile" id="0de8679f-b0c1-4b17-830e-25955007bb2c" database="energy_profiles" host="http://influxdb" startDate="2018-12-31T23:00:00.000000+0000" field="E3C" measurement="standard_profiles" filters="" port="8086" multiplier="100.0" endDate="2019-12-31T22:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" unit="JOULE" physicalQuantity="ENERGY" multiplier="GIGA" id="5cd6a897-1ee4-4963-ac07-e4d917c65ab7"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="ElectricityNetwork_80e3" id="80e36970-0f1d-41f4-b371-f380ee3da8d3">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.539896049575276" lon="4.229875802993775"/>
        <port xsi:type="esdl:InPort" connectedTo="4c3f787e-df4f-4ab8-93ab-93dcde9827e2 9f17b954-d511-42cc-a51e-ccf7b6fb2bea" id="ad335aa5-2ebc-4148-85ac-b4276f64b7fc" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="In"/>
        <port xsi:type="esdl:OutPort" connectedTo="54c99cc4-fbc2-4d94-bc78-994eedb2cded 19f8133c-51e5-4406-99eb-5489138255d0" id="bdb51e39-6cbf-48b1-84ab-bc342c4449f0" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Import" name="Import_bf48" id="bf483dd9-1f4e-4af1-9b23-ebf5eeae16d3" power="100000.0">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.5383211921442" lon="4.227418899536134"/>
        <costInformation xsi:type="esdl:CostInformation"/>
        <port xsi:type="esdl:OutPort" connectedTo="ad335aa5-2ebc-4148-85ac-b4276f64b7fc" id="9f17b954-d511-42cc-a51e-ccf7b6fb2bea" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Export" name="Export_ef9b" id="ef9b714e-ba35-4efb-9fbd-ff614af32c67" power="100000.0">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="51.537907449373336" lon="4.228609800338746"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.1" name="Export_ef9b-MarginalCosts" id="55738e39-2d19-4c33-820c-334de748b2bd"/>
        </costInformation>
        <KPIs xsi:type="esdl:KPIs" id="4df9f3f1-eb33-4d75-873a-92cac70cd44a">
          <kpi xsi:type="esdl:DoubleKPI" id="df63c192-29b0-4e44-9348-ffe3d3eb0d17" name="Teacos_yearly_delimiting_percentage"/>
        </KPIs>
        <port xsi:type="esdl:InPort" connectedTo="bdb51e39-6cbf-48b1-84ab-bc342c4449f0" id="19f8133c-51e5-4406-99eb-5489138255d0" carrier="279b10f4-c971-454d-9390-60a6970ab471" name="In"/>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
