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

#Scripts

Adding a new block SVG:
add the file to the assets folder

run
rails r bin/add_block.rb
in the terminal to do the necessary housekeeping (add to table, parse the paths, etc)

----

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
