  //////////////////////////////////////////////////////////////////////////////
  //FUNCTIONS FOR DEALING WITH PREVIEWS RENDING/STYLING

  var previewBlock = Snap('.preview-block svg');
  var previewProject = Snap('.preview-project svg');
  // var fillBlock = previewBlock.innerSVG();


  function cleanUpPreview() {

    preview.selectAll('path').forEach(function(path) {
      path.attr({stroke: 'none'});
    });
  }

  // cleanUpPreview(previewBlock);

  // cleanUpPreview(previewProject);

  function drawPreview() {
    var pattern = previewProject.image('http://www.mccallsquilting.com/images/wysiwyg_img/Celtic-Twist-300px_27999.jpg', 0, 0, 90, 90)
      .toPattern(0, 0, 90, 90)
      .attr({ id: 'patternId', y: '60'});

    previewProject.selectAll('path').forEach(function(path) {
      // fillBlock.appendTo(path);
      console.log('help');
      path.attr({fill: pattern, stroke: 'none'});
    });
  }

  drawPreview();
