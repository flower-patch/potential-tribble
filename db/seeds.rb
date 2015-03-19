# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Arthur Aardvark', city: cities.first)

BlockTemplate.create(name: "Nine Patch", block_svg_url: "test1.svg")
BlockTemplate.create(name: "Nine Patch 2", block_svg_url: "test2.svg")
BlockTemplate.create(name: "Star", block_svg_url: "test3.svg")


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
   width="210mm"
   height="297mm"
   viewBox="0 0 744.09448819 1052.3622047"
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
     inkscape:zoom="0.35"
     inkscape:cx="-262.14286"
     inkscape:cy="520"
     inkscape:document-units="px"
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
    <g
       id="group1">
      <path
         inkscape:connector-curvature="0"
         id="rect4144"
         d="m 273.35267,512.85771 266.15183,0 0,269.00897 -266.15183,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99102437px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
    </g>
    <g
       id="group2">
      <path
         id="rect4138"
         d="m 270.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4142"
         d="m 0.49815497,512.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4146"
         d="m 540.49817,512.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4150"
         d="m 270.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3">
      <path
         id="rect3336"
         d="m 0.49815497,782.86035 269.00369503,0 0,269.00365 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4140"
         d="m 540.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4148"
         d="m 0.49815497,242.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4152"
         d="m 540.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
  </g>
</svg>
')
Quilt.create( in_progress: false, name: "Red", seam_allowance: 0.25, public: true, preview_thumb_url: "dummythumb.png", project_template_id: 2, yardage: "1", svg:'<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="210mm"
   height="297mm"
   viewBox="0 0 744.09448819 1052.3622047"
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
     inkscape:zoom="0.35"
     inkscape:cx="-262.14286"
     inkscape:cy="520"
     inkscape:document-units="px"
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
    <g
       id="group1">
      <path
         inkscape:connector-curvature="0"
         id="rect4144"
         d="m 273.35267,512.85771 266.15183,0 0,269.00897 -266.15183,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99102437px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
    </g>
    <g
       id="group2">
      <path
         id="rect4138"
         d="m 270.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4142"
         d="m 0.49815497,512.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4146"
         d="m 540.49817,512.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4150"
         d="m 270.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3">
      <path
         id="rect3336"
         d="m 0.49815497,782.86035 269.00369503,0 0,269.00365 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4140"
         d="m 540.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4148"
         d="m 0.49815497,242.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4152"
         d="m 540.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
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
   width="210mm"
   height="297mm"
   viewBox="0 0 744.09448819 1052.3622047"
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
     inkscape:zoom="0.35"
     inkscape:cx="-262.14286"
     inkscape:cy="520"
     inkscape:document-units="px"
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
    <g
       id="group1">
      <path
         inkscape:connector-curvature="0"
         id="rect4144"
         d="m 273.35267,512.85771 266.15183,0 0,269.00897 -266.15183,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99102437px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
    </g>
    <g
       id="group2">
      <path
         id="rect4138"
         d="m 270.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4142"
         d="m 0.49815497,512.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4146"
         d="m 540.49817,512.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4150"
         d="m 270.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3">
      <path
         id="rect3336"
         d="m 0.49815497,782.86035 269.00369503,0 0,269.00365 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4140"
         d="m 540.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4148"
         d="m 0.49815497,242.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4152"
         d="m 540.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
  </g>
</svg>
')
Quilt.create( in_progress: false, name: "Secret", seam_allowance: 0.25, public: false, preview_thumb_url: "dummythumb.png", project_template_id: 1, yardage: "fat quarter", svg:'<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="210mm"
   height="297mm"
   viewBox="0 0 744.09448819 1052.3622047"
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
     inkscape:zoom="0.35"
     inkscape:cx="-262.14286"
     inkscape:cy="520"
     inkscape:document-units="px"
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
    <g
       id="group1">
      <path
         inkscape:connector-curvature="0"
         id="rect4144"
         d="m 273.35267,512.85771 266.15183,0 0,269.00897 -266.15183,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99102437px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
    </g>
    <g
       id="group2">
      <path
         id="rect4138"
         d="m 270.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4142"
         d="m 0.49815497,512.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4146"
         d="m 540.49817,512.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4150"
         d="m 270.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
    <g
       id="group3">
      <path
         id="rect3336"
         d="m 0.49815497,782.86035 269.00369503,0 0,269.00365 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4140"
         d="m 540.49817,782.86035 269.00369,0 0,269.00365 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4148"
         d="m 0.49815497,242.86035 269.00369503,0 0,269.00369 -269.00369503,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
      <path
         id="rect4152"
         d="m 540.49817,242.86035 269.00369,0 0,269.00369 -269.00369,0 z"
         style="fill:none;fill-rule:evenodd;stroke:#000000;stroke-width:0.99630994px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         inkscape:connector-curvature="0" />
    </g>
  </g>
</svg>
')
