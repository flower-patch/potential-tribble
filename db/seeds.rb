# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Arthur Aardvark', city: cities.first)

BlockTemplate.create(name: "Log Cabin", block_svg_url: "test1.svg")
BlockTemplate.create(name: "Nine Patch", block_svg_url: "test2.svg")
BlockTemplate.create(name: "Ohio Star", block_svg_url: "test3.svg")
BlockTemplate.create(name: "Four Patch", block_svg_url: "test4.svg")
BlockTemplate.create(name: "Ribbons", block_svg_url: "test5.svg")
BlockTemplate.create(name: "Rings", block_svg_url: "test6.svg")
BlockTemplate.create(name: "Double Four Patch", block_svg_url: "test7.svg")
BlockTemplate.create(name: "Squares", block_svg_url: "test8.svg")
BlockTemplate.create(name: "Cubes", block_svg_url: "test9.svg")
BlockTemplate.create(name: "Stripes", block_svg_url: "test10.svg")
BlockTemplate.create(name: "Pinwheel", block_svg_url: "test11.svg")
BlockTemplate.create(name: "Hole in the Barn Door", block_svg_url: "test12.svg")
BlockTemplate.create(name: "Friendship Star", block_svg_url: "test13.svg")
BlockTemplate.create(name: "Sawtooth Star", block_svg_url: "test14.svg")
BlockTemplate.create(name: "Birds in the Air", block_svg_url: "test15.svg")
BlockTemplate.create(name: "Square Upon Square", block_svg_url: "test16.svg")
BlockTemplate.create(name: "Diamond", block_svg_url: "test17.svg")
BlockTemplate.create(name: "Old Maid's Puzzle", block_svg_url: "test17.svg")

ProjectTemplate.create( name: "Single Patch", example_thumb_url: "dummythumb.png", description: "Make a single patch and use it in a project of your choosing")
ProjectTemplate.create( name: "Doll", example_thumb_url: "dummythumb.png", description: "Make a doll sized quilt")
ProjectTemplate.create( name: "Queen Sized Quilt", example_thumb_url: "dummythumb.png", description: "Make a queen sized quilt")

Quilt.create( in_progress: false, name: "Default", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 1, yardage: "fat quarter", svg:'<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="9in"
   height="9in"
   viewBox="0 0 572.72729 810.00002"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="test2.svg">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.49497475"
     inkscape:cx="273.08844"
     inkscape:cy="383.49452"
     inkscape:document-units="in"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1440"
     inkscape:window-height="852"
     inkscape:window-x="0"
     inkscape:window-y="0"
     inkscape:window-maximized="1"
     units="in" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-242.36215)">
    <g
       id="group1"
       transform="matrix(1.0037037,0,0,1.0037037,-120.13635,-2.3977221)"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-opacity:1;stroke-width:3.98523987;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         inkscape:connector-curvature="0"
         image-id="replaceme1"
         id="rect4144"
         d="m 270.49815,512.86037 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:3.98523987;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none" />
    </g>
    <g
       id="group2">
      <path
         id="rect4138"
         image-id="replaceme2"
         d="m 151.36365,782.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4142"
         image-id="replaceme2"
         d="m -118.63635,512.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4146"
         image-id="replaceme2"
         d="m 421.36365,512.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4150"
         image-id="replaceme2"
         d="m 151.36365,242.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3">
      <path
         id="rect3336"
         image-id="replaceme3"
         d="m -118.63635,782.3622 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4140"
         image-id="replaceme3"
         d="m 421.36365,782.3622 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4148"
         image-id="replaceme3"
         d="m -118.63635,242.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
      <path
         id="rect4152"
         image-id="replaceme3"
         d="m 421.36365,242.36215 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#c0c0c0;stroke-width:4;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;stroke-miterlimit:4;stroke-dasharray:none"
         inkscape:connector-curvature="0" />
    </g>
  </g>
</svg>')

Quilt.create( in_progress: false, name: "Magic", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 2, yardage: "1", svg:'<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="9in"
   height="9in"
   viewBox="0 0 810.00001 810.00002"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="test8.svg">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.40123457"
     inkscape:cx="286.08294"
     inkscape:cy="491.72871"
     inkscape:document-units="in"
     inkscape:current-layer="layer1"
     showgrid="false"
     units="in"
     inkscape:window-width="1440"
     inkscape:window-height="852"
     inkscape:window-x="0"
     inkscape:window-y="0"
     inkscape:window-maximized="1" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-242.36215)">
    <g
       id="group1"
       style="fill:none;stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 135,917.36215 135,-135 -270,0 z"
         id="path4141"
         inkscape:connector-curvature="0"
         image-id="replaceme1"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4147"
         image-id="replaceme1"
         d="m 135,917.36213 135,135 0,-270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4335"
         image-id="replaceme1"
         d="m 405,917.36215 135,-135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,917.36218 -135,-135 0,270 z"
         id="path4341"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 135,647.36215 135,135 -270,0 z"
         id="path4355"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4363"
         image-id="replaceme1"
         d="m 405,647.36215 135,135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    </g>
    <g
       id="group2"
       style="fill:none;stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,917.36213 135,135 0,-270 z"
         id="path4337"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 675,917.36215 135,-135 -270,0 z"
         id="path4343"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4349"
         image-id="replaceme2"
         d="m 675,917.36218 -135,-135 0,270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4361"
         image-id="replaceme2"
         d="m 405,647.36208 135,135 0,-270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 675,647.36215 135,135 -270,0 z"
         id="path4371"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 675,647.36213 -135,-135 0,270 z"
         id="path4373"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
    </g>
    <g
       id="group3"
       style="fill:none;stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         image-id="replaceme3"
         id="path4351"
         d="m 135,647.3621 135,-135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 135,647.36208 135,135 0,-270 z"
         id="path4353"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4365"
         image-id="replaceme3"
         d="m 405,647.36213 -135,-135 0,270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4377"
         image-id="replaceme3"
         d="m 135,377.36208 135,135 0,-270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4379"
         image-id="replaceme3"
         d="m 135,377.36215 135,135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,377.36213 -135,-135 0,270 z"
         id="path4389"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
    </g>
    <g
       id="group4"
       style="fill:none;stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="rect4136"
         image-id="replaceme4"
         d="m 135,917.3622 135,135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4333"
         image-id="replaceme4"
         d="m 135,917.36218 -135,-135 0,270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,917.3622 135,135 -270,0 z"
         id="path4339"
         image-id="replaceme4"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4345"
         image-id="replaceme4"
         d="m 675,917.36213 135,135 0,-270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4347"
         image-id="replaceme4"
         d="m 675,917.3622 135,135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 135,647.36213 -135,-135 0,270 z"
         id="path4357"
         image-id="replaceme4"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 675,647.36208 135,135 0,-270 z"
         id="path4369"
         image-id="replaceme4"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 135,377.3621 135,-135 -270,0 z"
         id="path4375"
         image-id="replaceme4"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4381"
         image-id="replaceme4"
         d="m 135,377.36213 -135,-135 0,270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4383"
         image-id="replaceme4"
         d="m 405,377.3621 135,-135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 675,377.3621 135,-135 -270,0 z"
         id="path4391"
         image-id="replaceme4"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4393"
         image-id="replaceme4"
         d="m 675,377.36208 135,135 0,-270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    </g>
    <g
       id="group5"
       style="fill:none;stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none">
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,647.3621 135,-135 -270,0 z"
         id="path4359"
         image-id="replaceme5"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4367"
         image-id="replaceme5"
         d="m 675,647.3621 135,-135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,377.36208 135,135 0,-270 z"
         id="path4385"
         image-id="replaceme5"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 405,377.36215 135,135 -270,0 z"
         id="path4387"
         image-id="replaceme5"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4395"
         image-id="replaceme5"
         d="m 675,377.36215 135,135 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path4397"
         image-id="replaceme5"
         d="m 675,377.36213 -135,-135 0,270 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    </g>
  </g>
</svg>
')

Quilt.create( in_progress: false, name: "Goat", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 3, yardage: "3", svg:'<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="9in"
   height="9in"
   viewBox="0 0 572.72729 810.00002"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="test6.svg">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.49497475"
     inkscape:cx="364.06027"
     inkscape:cy="221.87011"
     inkscape:document-units="in"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1440"
     inkscape:window-height="852"
     inkscape:window-x="0"
     inkscape:window-y="0"
     inkscape:window-maximized="1"
     units="in"
     showguides="false" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-242.36215)">
    <g
       id="group1"
       style="stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;fill:none">
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"

         id="rect9953"
         d="m 83.86365,1052.3622 0,-202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 83.863647,849.8622 0,202.5 202.5,0 z"
         id="path10498"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 488.86365,849.8622 0,202.5 -202.5,0 z"
         id="path10502"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10506"
         image-id="replaceme1"
         d="m 488.86364,1052.3622 0,-202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10512"
         image-id="replaceme1"
         d="m -118.63635,647.36215 0,202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 286.36365,849.86215 0,-202.5 -202.5,0 z"
         id="path10516"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 286.36365,849.86215 0,-202.5 202.5,0 z"
         id="path10520"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10524"
         image-id="replaceme1"
         d="m 691.36365,647.36215 0,202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10528"
         image-id="replaceme1"
         d="m -118.63635,647.36215 0,-202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 286.36365,444.86215 0,202.5 -202.5,0 z"
         id="path10532"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 286.36365,444.86215 0,202.5 202.5,0 z"
         id="path10536"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10540"
         image-id="replaceme1"
         d="m 691.36365,647.36215 0,-202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10542"
         image-id="replaceme1"
         d="m 83.863647,242.3621 0,202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 83.863644,444.8621 0,-202.5 202.5,0 z"
         id="path10546"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 488.86365,444.8621 0,-202.5 -202.5,0 z"
         id="path10550"
         image-id="replaceme1"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10554"
         image-id="replaceme1"
         d="m 488.86364,242.3621 0,202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    </g>
    <g
       id="group2"
       style="stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;fill:none">
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10500"
         image-id="replaceme2"
         d="m 286.36365,1052.3622 0,-202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10504"
         image-id="replaceme2"
         d="m 286.36365,1052.3622 0,-202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 83.86365,849.86215 0,-202.5 -202.5,0 z"
         id="path10510"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10514"
         image-id="replaceme2"
         d="m 83.863647,647.36215 0,202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10518"
         image-id="replaceme2"
         d="m 488.86365,647.36215 0,202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 488.86364,849.86215 0,-202.5 202.5,0 z"
         id="path10522"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 83.863647,444.86215 0,202.5 -202.5,0 z"
         id="path10526"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10530"
         image-id="replaceme2"
         d="m 83.863644,647.36215 0,-202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10534"
         image-id="replaceme2"
         d="m 488.86365,647.36215 0,-202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 488.86364,444.86215 0,202.5 202.5,0 z"
         id="path10538"
         image-id="replaceme2"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10548"
         image-id="replaceme2"
         d="m 286.36365,242.3621 0,202.5 -202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         sodipodi:nodetypes="cccc"
         inkscape:connector-curvature="0"
         id="path10552"
         image-id="replaceme2"
         d="m 286.36365,242.3621 0,202.5 202.5,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    </g>
    <g
       id="group3"
       style="stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;fill:none">
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m -118.63635,849.8622 0,202.5 202.5,0 z"
         id="path10496"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 691.36365,849.8622 0,202.5 -202.5,0 z"
         id="path10508"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m -118.63635,444.8621 0,-202.5 202.5,0 z"
         id="path10544"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 691.36365,444.8621 0,-202.5 -202.5,0 z"
         id="path10556"
         image-id="replaceme3"
         inkscape:connector-curvature="0"
         sodipodi:nodetypes="cccc" />
    </g>
  </g>
</svg>')
