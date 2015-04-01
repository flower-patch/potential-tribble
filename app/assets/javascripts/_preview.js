////////////////////////////////////////////////////////////////////////////
// CALLING FUNCTIONS FOR DEALING WITH PREVIEWS RENDERING/STYLING

$(function () {

  var previewBlockSvg = Snap('.preview-block svg');
  var previewBlockThumb = Snap('.preview-thumbnail svg');
  var finalBlock = Snap('.final-block svg');
  var modalBlock = Snap('.current-block .svg-editor svg');

  if (previewBlockSvg) {
    // || finalBlock || modalBlock
    runPreviewPage();
  }

  function runPreviewPage() {
    var previewProjectSvg = Snap('.preview-project svg');
    var previewBlock = $('.preview-block').html();
    var previewProject = $('.preview-project').html();


    cleanUpPreview(previewBlockSvg);

    cleanUpPreview(previewProjectSvg);

    cleanUpPreview(previewBlockThumb);

    drawPreview();


    function cleanUpPreview(prev) {
      prev.selectAll('path').forEach(function(path) {
        path.attr({stroke: 'none'});
      });
    }


    function drawPreview() {
      var previewUrl = $('.preview-img-url').html();

      var pattern = previewProjectSvg.image(previewUrl, 0, 0, 90, 90)
        .toPattern(0, 0, 90, 90)
        .attr({ id: 'patternId', y: '60'});

      cleanUpPreview(previewProjectSvg);
    }
  }

});
