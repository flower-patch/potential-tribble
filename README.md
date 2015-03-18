#Terminology Used in this Project

Quilt: Made up of many blocks

Block: Repeating geometric pattern. Uses an SVG file to represent it. Made up of many patches.

Patch: Individual pieces of fabric in a cut and sew project. Each path in the SVG represents a patch.

Pattern: Raster image applied to each patch

#API Usage

To get a link to a pattern:

http://localhost:3000/api/v1/designs/get?design_id=1

where design_id is the pattern desired. (JSON formatted)

----

To get a JSON list of all available links to pattern files:

http://localhost:3000/api/v1/designs/list

----

To get SVG for a block:

http://localhost:3000/api/v1/blocks/get?block_id=1

where block_id is the block's SVG desired

----

To get a JSON list of all available links to block SVG files:

http://localhost:3000/api/v1/blocks/list
