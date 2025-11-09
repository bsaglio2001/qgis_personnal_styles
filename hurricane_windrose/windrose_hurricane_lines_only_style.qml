<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology" version="3.40.10-Bratislava">
  <renderer-v2 type="singleSymbol" symbollevels="0" forceraster="0" enableorderby="0" referencescale="-1">
    <symbols>
      <symbol alpha="1" force_rhr="0" type="marker" name="0" frame_rate="10" is_animated="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" id="{f11ddfc7-1bed-4843-b8a5-238eda5b1900}" class="GeometryGenerator" locked="0">
          <Option type="Map">
            <Option type="QString" name="SymbolType" value="Line"/>
            <Option type="QString" name="geometryModifier" value="/*&#xd;&#xa;This style aims to create from a point layer, a kind of windrose (or compass) shaped as a hurricane  with as many lines as there are wind direction attributes.&#xd;&#xa;Each line of the compass is proportional to the corresponding directional value. &#xd;&#xa;&#xd;&#xa;&#xd;&#xa;It is recommended to apply this style to a layer projected in EPSG:3857, in order to respect the conventional direction of North (0 or 360).&#xd;&#xa;&#xd;&#xa;'direction_list'   [integer] an array of all directions (in degrees) available in separate attributes for each point entity. This attributes must be named with these integers as suffixes.&#xd;&#xa;&#xd;&#xa;'scalefactor' [integer] multiplier factor used to reduce or enlarge the directional lines.&#xd;&#xa;&#xd;&#xa;'ibuffer' [integer] buffer size (in ground units, i.e., meter) used to keep an empty circle at the center of the compass. &#xd;&#xa;&#xd;&#xa;Benjamin SAGLIO&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;with_variable('directions_list',array(0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350),&#xd;&#xa;with_variable('scalefactor',500,&#xd;&#xa;with_variable('ibuffer',2000,&#xd;&#xa;collect_geometries(&#xd;&#xa;&#x9;array_filter(&#xd;&#xa;&#x9;&#x9;array_foreach(@directions_list,&#xd;&#xa;&#x9;&#x9;&#x9;translate(make_line( $geometry, make_point(x($geometry) - sin(  radians( @element ))*  eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor, y($geometry) -  cos(  radians( @element ))* eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor)),-@ibuffer*cos(  radians( @element )),@ibuffer*sin(  radians( @element )))&#xd;&#xa;&#x9;&#x9;), @element IS NOT NULL&#xd;&#xa;&#x9;)&#xd;&#xa;))))&#xd;&#xa;"/>
            <Option type="QString" name="units" value="MapUnit"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" force_rhr="0" type="line" name="@0@0" frame_rate="10" is_animated="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" pass="0" id="{967c6f57-4ffc-4aaa-9d49-ed6416f176eb}" class="ArrowLine" locked="0">
              <Option type="Map">
                <Option type="QString" name="arrow_start_width" value="0"/>
                <Option type="QString" name="arrow_start_width_unit" value="MM"/>
                <Option type="QString" name="arrow_start_width_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="arrow_type" value="0"/>
                <Option type="QString" name="arrow_width" value="2"/>
                <Option type="QString" name="arrow_width_unit" value="MM"/>
                <Option type="QString" name="arrow_width_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="head_length" value="1.5"/>
                <Option type="QString" name="head_length_unit" value="MM"/>
                <Option type="QString" name="head_length_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="head_thickness" value="1"/>
                <Option type="QString" name="head_thickness_unit" value="MM"/>
                <Option type="QString" name="head_thickness_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="head_type" value="0"/>
                <Option type="QString" name="is_curved" value="1"/>
                <Option type="QString" name="is_repeated" value="1"/>
                <Option type="QString" name="offset" value="0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="ring_filter" value="0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <symbol alpha="1" force_rhr="0" type="fill" name="@@0@0@0" frame_rate="10" is_animated="0" clip_to_extent="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" id="{42fb8f44-58d5-4640-b651-1216abe7a71f}" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,255,255,rgb:0,0,1,1"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
                    <Option type="QString" name="outline_style" value="no"/>
                    <Option type="QString" name="outline_width" value="0.26"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="style" value="solid"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" force_rhr="0" type="marker" name="" frame_rate="10" is_animated="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" id="{0b079d52-f478-4f17-a091-6cf9e0f2a930}" class="SimpleMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="cap_style" value="square"/>
            <Option type="QString" name="color" value="255,0,0,255,rgb:1,0,0,1"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="name" value="circle"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="2"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
