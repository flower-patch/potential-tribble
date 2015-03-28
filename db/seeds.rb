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
BlockTemplate.create(name: "Old Maid's Puzzle", block_svg_url: "test18.svg")

ProjectTemplate.create( name: "Queen-Sized Quilt", example_thumb_url: "queen_quilt.png", description: "Make a queen sized quilt", blocks_across: 10, blocks_down: 12, project_layout_svg:"queen.svg")
ProjectTemplate.create( name: "Twin-Sized Quilt", example_thumb_url: "twin_quilt.png", description: "Make a twin sized quilt", blocks_across: 8, blocks_down: 10, project_layout_svg:"twin.svg")
ProjectTemplate.create( name: "Lap Quilt", example_thumb_url: "lap_quilt.png", description: "Make a lap quilt", blocks_across: 4, blocks_down: 5, project_layout_svg:"lap.svg")
ProjectTemplate.create( name: "Single Patch", example_thumb_url: "pillow_quilt.png", description: "Make a single patch and use it in a project of your choosing", blocks_across: 1, blocks_down: 1, project_layout_svg:"singlepatch.svg")
ProjectTemplate.create( name: "Doll", example_thumb_url: "doll_quilt.png", description: "Make a doll sized quilt", blocks_across: 2, blocks_down: 3, project_layout_svg:"doll.svg")

Quilt.create( in_progress: false, name: "Default", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 1, yardage: "fat quarter", svg:'<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="9in"
   height="9in"
   viewBox="0 243 810 810"
   preserveAspectRatio="xMinYMin meet"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="test1.svg">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.5"
     inkscape:cx="569.56753"
     inkscape:cy="398.93694"
     inkscape:document-units="in"
     inkscape:current-layer="layer1"
     showgrid="false"
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
     id="layer1">
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 0,963 810,0 0,90 -810,0 z"
       id="rect3336"
       image-id="replaceme1"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       id="path4139"
       image-id="replaceme2"
       d="m 720,243 90,0 0,720 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 0,243 720,0 0,90 -720,0 z"
       id="path4141"
       image-id="replaceme3"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       image-id="replaceme4"
       id="path4143"
       d="m 0,333 90,0 0,630 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 90,873 630,0 0,90 -630,0 z"
       id="path4145"
       image-id="replaceme5"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       image-id="replaceme6"
       id="path4147"
       d="m 630,333 90,0 0,540 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 90,333 540,0 0,90 -540,0 z"
       id="path4149"
       image-id="replaceme7"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       id="path4151"
       image-id="replaceme8"
       d="m 90,423 90,0 0,450 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 180,783 450,0 0,90 -450,0 z"
       id="path4153"
       image-id="replaceme9"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       id="path4155"
       image-id="replaceme10"
       d="m 540,423 90,0 0,360 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 180,423 360,0 0,90 -360,0 z"
       id="path4157"
       image-id="replaceme11"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       id="path4159"
       image-id="replaceme12"
       d="m 180,513 90,0 0,270 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 270,693 270,0 0,90 -270,0 z"
       id="path4163"
       image-id="replaceme13"
       inkscape:connector-curvature="0" />
    <path
       inkscape:connector-curvature="0"
       id="path4165"
       image-id="replaceme14"
       d="m 450,513 90,0 0,180 -90,0 z"
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 270,513 180,0 0,180 -180,0 z"
       id="path7008"
       image-id="replaceme15"
       inkscape:connector-curvature="0" />
  </g>
</svg>
 ')

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
   viewBox="0 0 810 810"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="test3.svg">
  <defs
     id="defs8693" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="0.35"
     inkscape:cx="216.42857"
     inkscape:cy="247.71401"
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
     id="metadata8696">
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
         inkscape:connector-curvature="0"
         image-id="replaceme1"
         id="rect9239"
         d="m 0,782.3622 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 540,782.36215 270,0 0,270 -270,0 z"
         id="path9242"
         image-id="replaceme1"
         inkscape:connector-curvature="0" />
      <path
         inkscape:connector-curvature="0"
         image-id="replaceme1"
         id="path9244"
         d="m 540,242.3621 270,0 0,270 -270,0 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
      <path
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 0,242.3621 270,0 0,270 -270,0 z"
         id="path9246"
         image-id="replaceme1"
         inkscape:connector-curvature="0" />
    </g>
    <path
       style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 270,512.3621 270,0 0,270 -270,0 z"
       id="path9248"
       image-id="replaceme2"
       inkscape:connector-curvature="0" />
    <g
       id="group2"
       style="stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;fill:none">
      <path
         sodipodi:nodetypes="cccc"
         image-id="replaceme3"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 540,512.36215 -270,0 135,-135 z"
         id="path9250"
         inkscape:connector-curvature="0" />
      <path
         inkscape:connector-curvature="0"
         id="path9252"
         image-id="replaceme3"
         d="m 540,242.36212 -270,0 135,135 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         inkscape:connector-curvature="0"
         id="path9254"
         image-id="replaceme3"
         d="m 540,1052.3622 -270,0 135,-135 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         image-id="replaceme3"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 540,782.36212 -270,0 135,135 z"
         id="path9256"
         inkscape:connector-curvature="0" />
      <path
         sodipodi:nodetypes="cccc"
         image-id="replaceme3"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 810.00003,782.36215 0,-270 -135,135 z"
         id="path9266"
         inkscape:connector-curvature="0" />
      <path
         inkscape:connector-curvature="0"
         image-id="replaceme3"
         id="path9268"
         d="m 540,782.36215 0,-270 135,135 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         inkscape:connector-curvature="0"
         image-id="replaceme3"
         id="path9270"
         d="m 270.00003,782.36215 0,-270 -135,135 z"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         image-id="replaceme3"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 0,782.36215 0,-270 135,135 z"
         id="path9272"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3"
       style="stroke:#c0c0c0;stroke-opacity:1;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;fill:none">
      <path
         sodipodi:nodetypes="cccc"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 810,782.36215 -270,0 135,-135 z"
         image-id="replaceme4"
         id="path9258"
         inkscape:connector-curvature="0" />
      <path
         inkscape:connector-curvature="0"
         id="path9260"
         d="m 810,512.36207 -270,0 135,135 z"
         image-id="replaceme4"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         inkscape:connector-curvature="0"
         id="path9262"
         d="m 270,782.36215 -270,0 135,-135 z"
         image-id="replaceme4"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 270,512.36207 -270,0 135,135 z"
         image-id="replaceme4"
         id="path9264"
         inkscape:connector-curvature="0" />
      <path
         sodipodi:nodetypes="cccc"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 540.00003,512.36215 0,-270 -135,135 z"
         image-id="replaceme4"
         id="path9274"
         inkscape:connector-curvature="0" />
      <path
         inkscape:connector-curvature="0"
         id="path9276"
         d="m 270,512.36215 0,-270 135,135 z"
         image-id="replaceme4"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         inkscape:connector-curvature="0"
         id="path9278"
         d="m 540.00003,1052.3622 0,-270 -135,135 z"
         image-id="replaceme4"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         sodipodi:nodetypes="cccc" />
      <path
         sodipodi:nodetypes="cccc"
         style="fill:none;fill-opacity:1;stroke:#c0c0c0;stroke-width:4;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
         d="m 270,1052.3622 0,-270 135,135 z"
         image-id="replaceme4"
         id="path9280"
         inkscape:connector-curvature="0" />
    </g>
  </g>
</svg>
')
