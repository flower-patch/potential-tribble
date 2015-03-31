//////////////////////////////////////////////////////////////////////////////
//CALLING FUNCTIONS FOR DEALING WITH PREVIEWS RENDERING/STYLING

$(function() {

  var previewBlockSvg = Snap('.preview-block svg');

  if (previewBlockSvg) {
    runPreviewPage();
  }

  function runPreviewPage() {
    var previewProjectSvg = Snap('.preview-project svg');
    var previewBlock = $('.preview-block').html();
    var previewProject = $('.preview-project').html();


    cleanUpPreview(previewBlockSvg);

    cleanUpPreview(previewProjectSvg);

    drawPreview();


    function cleanUpPreview(prev) {
      prev.selectAll('path').forEach(function(path) {
        path.attr({
          stroke: 'none'
        });
      });
    }


    function drawPreview() {
      var previewUrl = $('.preview-img-url').html();

      var pattern = previewProjectSvg.image(previewUrl, 0, 0, 90, 90)
        .toPattern(0, 0, 90, 90)
        .attr({
          id: 'patternId',
          y: '60'
        });

      previewProjectSvg.selectAll('path').forEach(function(path) {
        console.log('help');
        path.attr({
          fill: pattern,
          stroke: 'none'
        });
      });
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  //FUNCTIONS RELATED TO THUMBNAILS

});
