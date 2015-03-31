//////////////////////////////////////////////////////////////////////////////
//CALLING FUNCTIONS FOR DEALING WITH PREVIEWS RENDERING/STYLING

$(function() {

  var previewBlockSvg = Snap('.preview-block svg');
  var previewProjectSvg = Snap('.preview-project svg');

  if (previewBlockSvg) {
    runPreviewPage();
  }

  function runPreviewPage() {
    var previewBlock = $('.preview-block').html();
    var previewProject = $('.preview-project').html();


    cleanUpPreview(previewBlockSvg);

    cleanUpPreview(previewProjectSvg);

    drawPreview();
    console.log('drawPreview');

    toggleThumbnails();
}
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
    
  //////////////////////////////////////////////////////////////////////////////
  //FUNCTIONS RELATED TO THUMBNAILS

    function toggleThumbnails () {
      $('.preview-thumbnail').on('click', function() {
        console.log('click thumbnail');
        var parent = $(this).parent();
        position = parent.index();
        findChildren(parent, position);
      });
    }

    function findChildren(parent, position) {
      var children = parent.children();
      console.log(children);
      var previewIndex = parent.index();
    //  getImgMatch();
    }

    // function getImgMatch(element, index, array) {
    //   var check = previewIndex;
    //
    // }

  });
