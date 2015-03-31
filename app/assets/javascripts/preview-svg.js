//APPLY FABRIC PATCH

  function applyFabricPatch(path) {
    //empty palette, nothing happens!
    if (!currFabric) return;
    //use id for snappy shtuffz
    var patternId = 'img_' + currFabric.id;
    //pattern is used here because of svg pattern tag
    var pattern = svg.select('#' + patternId);

    if (!pattern) {
      pattern = svg.image(currFabric.preview_url, 0, 0, 810, 810)
      // pattern = svg.image(currFabric.thumbnail_url, 0, 0, 810, 810)
      .toPattern(0, 0, 810, 810)
      .attr({ id: patternId, y: '242'});
    }

    path.attr('fill', pattern);
  }

  function clearFabricPatch(path) {
    path.attr('fill', '#ffffff');
  }




//GET ALL PATHS IN GROUP (or SVG?)

      function getAllPaths(group) {
        var groupId = $(group).data('groupId');
        return svg.selectAll('#' + groupId + ' path');
      }



//GET ALL PATHS OF THE SVG ON THE PAGE
//TAKE THE PREVIEW IMAGE THUMBNAIL
//SET IT AS THE PATTERN AND FILL OF EACH PATH IN THE SVG
//SET THE STROKE COLOR TO NONE
//remove shadow


getAllPaths
