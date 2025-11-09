<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology" version="3.40.10-Bratislava">
  <renderer-v2 referencescale="-1" type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol clip_to_extent="1" is_animated="0" alpha="1" force_rhr="0" name="0" type="marker" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="GeometryGenerator" locked="0" id="{eb68e994-902c-46f6-8b38-3be11dfc71da}" pass="0">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Fill"/>
            <Option name="geometryModifier" type="QString" value="/*&#xd;&#xa;This style aims to create a kind of surfacic windrose (or compass) from a point layer, with as many vertices as there are wind direction attributes.&#xd;&#xa;Each vertex is distant from the center of the surface by a distance proportional to the value of the corresponding attribute.&#xd;&#xa;&#xd;&#xa;It is recommended to apply this style to a layer projected in EPSG:3857, in order to respect the conventional direction of North (0 or 360).&#xd;&#xa;&#xd;&#xa;'direction_list_part1'   [integer] an array of first half of directions (in degrees, for example 0 to 170) available in separate attributes for each point entity. This attributes must be named with thess integers as suffixes.&#xd;&#xa;&#xd;&#xa;'direction_list_part2'   [integer] an array of second half of directions (in degrees, for example 180 to 350) available in separate attributes for each point entity. This attributes must be named with thess integers as suffixes.&#xd;&#xa;&#xd;&#xa;'direction_list2'   [integer] an array of all directions (in degrees) available in separate attributes for each point entity. This attributes must be named with thess integers as suffixes.&#xd;&#xa;&#xd;&#xa;'scalefactor' [integer] multiplier factor used to reduce or enlarge the directional lines.&#xd;&#xa;&#xd;&#xa;Benjamin SAGLIO&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;with_variable('directions_list_part1',array(0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170),&#xd;&#xa;with_variable('directions_list_part2',array(180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350),&#xd;&#xa;with_variable('directions_list1', array_cat(@directions_list_part1,@directions_list_part2),&#xd;&#xa;with_variable('directions_list2', array_cat(@directions_list_part2,@directions_list_part1),&#xd;&#xa;with_variable('scalefactor',500,&#xd;&#xa;&#x9;combine(&#xd;&#xa;&#x9;&#x9;make_valid(&#xd;&#xa;&#x9;&#x9;make_polygon(&#xd;&#xa;&#x9;&#x9;&#x9;make_line(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;array_prepend(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;array_append(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;array_filter(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;array_foreach(@directions_list1, &#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;CASE WHEN eval('&quot;fxi_'||to_string(@element)||'&quot;') > 0 THEN make_point(x($geometry) -  sin(radians(@element))*eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor,  y($geometry) -  cos(radians(@element))*eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor )&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;ELSE NULL&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;END&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;),@element IS NOT NULL&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;),$geometry&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;),$geometry&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;)&#xd;&#xa;&#x9;&#x9;&#x9;)&#xd;&#xa;&#x9;&#x9;)),&#xd;&#xa;&#x9;&#x9;make_valid(&#xd;&#xa;&#x9;&#x9;make_polygon(&#xd;&#xa;&#x9;&#x9;&#x9;make_line(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;array_prepend(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;array_append(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;array_filter(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;array_foreach(@directions_list2, &#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;CASE WHEN eval('&quot;fxi_'||to_string(@element)||'&quot;') > 0 THEN make_point(x($geometry) -  sin(radians(@element))*eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor,  y($geometry) -  cos(radians(@element))*eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor )&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;ELSE NULL&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;END&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;),@element IS NOT NULL&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;),$geometry&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;),$geometry&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;)&#xd;&#xa;&#x9;&#x9;&#x9;)&#xd;&#xa;&#x9;&#x9;))&#xd;&#xa;&#x9;)&#xd;&#xa;))&#xd;&#xa;))&#xd;&#xa;)"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" is_animated="0" alpha="1" force_rhr="0" name="@0@0" type="fill" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" class="SimpleFill" locked="0" id="{fb7d7749-0f0c-4966-8f08-fbb3a2fd0c25}" pass="0">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="0,0,255,64,rgb:0,0,1,0.25000381475547417"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer enabled="1" class="GeometryGenerator" locked="0" id="{f11ddfc7-1bed-4843-b8a5-238eda5b1900}" pass="0">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value="/*&#xd;&#xa;This style aims to create a kind of windrose (or compass) from a point layer, with as many lines as there are wind direction attributes.&#xd;&#xa;Each line of the compass is proportional to the corresponding directional value. &#xd;&#xa;&#xd;&#xa;It is recommended to apply this style to a layer projected in EPSG:3857, in order to respect the conventional direction of North (0 or 360).&#xd;&#xa;&#xd;&#xa;'direction_list'   [integer] an array of all directions (in degrees) available in separate attributes for each point entity. This attributes must be named with these integers as suffixes.&#xd;&#xa;&#xd;&#xa;'scalefactor' [integer] multiplier factor used to reduce or enlarge the directional lines.&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;Benjamin SAGLIO&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;with_variable('directions_list',array(0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350),&#xd;&#xa;with_variable('scalefactor',500,&#xd;&#xa;collect_geometries(&#xd;&#xa;&#x9;array_filter(&#xd;&#xa;&#x9;&#x9;array_foreach(@directions_list,&#xd;&#xa;&#x9;&#x9;&#x9;make_line( $geometry, make_point(x($geometry) - sin(  radians( @element ))*  eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor, y($geometry) -  cos(  radians( @element ))* eval('&quot;fxi_'||to_string(@element)||'&quot;')*@scalefactor))&#xd;&#xa;&#x9;&#x9;), @element IS NOT NULL&#xd;&#xa;&#x9;)&#xd;&#xa;)))&#xd;&#xa;"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" is_animated="0" alpha="1" force_rhr="0" name="@0@1" type="line" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" class="ArrowLine" locked="0" id="{967c6f57-4ffc-4aaa-9d49-ed6416f176eb}" pass="0">
              <Option type="Map">
                <Option name="arrow_start_width" type="QString" value="0"/>
                <Option name="arrow_start_width_unit" type="QString" value="MM"/>
                <Option name="arrow_start_width_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="arrow_type" type="QString" value="0"/>
                <Option name="arrow_width" type="QString" value="2"/>
                <Option name="arrow_width_unit" type="QString" value="MM"/>
                <Option name="arrow_width_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="head_length" type="QString" value="1.5"/>
                <Option name="head_length_unit" type="QString" value="MM"/>
                <Option name="head_length_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="head_thickness" type="QString" value="1"/>
                <Option name="head_thickness_unit" type="QString" value="MM"/>
                <Option name="head_thickness_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="head_type" type="QString" value="0"/>
                <Option name="is_curved" type="QString" value="1"/>
                <Option name="is_repeated" type="QString" value="1"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="ring_filter" type="QString" value="0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <symbol clip_to_extent="1" is_animated="0" alpha="1" force_rhr="0" name="@@0@1@0" type="fill" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleFill" locked="0" id="{42fb8f44-58d5-4640-b651-1216abe7a71f}" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="0,0,255,255,rgb:0,0,1,1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0.26"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
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
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol clip_to_extent="1" is_animated="0" alpha="1" force_rhr="0" name="" type="marker" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleMarker" locked="0" id="{93579e2c-349f-4782-a6e8-0d346c3aac7d}" pass="0">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="255,0,0,255,rgb:1,0,0,1"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="circle"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="2"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
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
