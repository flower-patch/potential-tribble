#Terminology Used in this Project

Quilt: Made up of many blocks.

Block: Repeating geometric pattern. Uses an SVG file to represent it. Made up of many patches.

Patch: Individual pieces of fabric in a cut and sew project. Each path in the SVG represents a patch.

Pattern: Raster image applied to each patch.

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

#Making a working block in Inkscape:

1. Go to file->Document Properties
  - in the upper right, set "Default units" to in
  - in the "Custom size" box, set the width and height to 9 inches
2. Making patches:
  - make sure all patches are paths. Not rects.
    - to convert a rect to a path, with the rect selected, go to Path->Object to Path
    - How do you tell if a given patch is a rect or a path?
      - go to Edit->XML Editor. With the patch selected, the XML should read something to the effect of "<svg:path..." rather than "<svg:rect..."
  - when positioning and sizing paths, give them a fill to make them visible, and no stroke
    - this is important for calculating area of the patch. Your coordinates will be off if you have a stroke width > 0
    - it seems to be helpful to use a visual bounding box rather than a geometric bounding box. If you are unsure which you have enabled, go to Edit->Preferences
  - once all of the patches are in place and sized correctly, give them no fill and a stroke of 1px
  - grouped items will determine the sets available on the edit screen of the app. Nested groups are not supported at this time
    - group names should follow the naming convention "groupn" where n is the number of the group. Example: id="group2"

**If your blocks have gotten all kattywompus, there is a repository for clean block svg files: **
https://github.com/cHaden/sanitized_svg
----

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
