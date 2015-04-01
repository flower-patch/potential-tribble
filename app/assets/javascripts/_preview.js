////////////////////////////////////////////////////////////////////////////
// CALLING FUNCTIONS FOR DEALING WITH PREVIEWS RENDERING/STYLING

$(function() {

  var previewBlockSvg = Snap('.preview-block svg');
  var previewBlockThumb = Snap('.preview-thumbnail svg');
  var finalBlock = Snap('.final-block svg');
  var modalBlock = Snap('.current-block .svg-editor svg');
  var previewProjectSvg = Snap('.preview-project svg');

  if (previewBlockSvg) {
    // || finalBlock || modalBlock
    runPreviewPage();
  }

  function runPreviewPage() {
    var previewBlock = $('.preview-block').html();
    var previewProject = $('.preview-project').html();


    cleanUpPreview(previewBlockSvg);

    cleanUpPreview(previewProjectSvg);

    cleanUpPreview(previewBlockThumb);

    // drawPreview();
    console.log('drawPreview');

    initThumbnails();
}
    function cleanUpPreview(prev) {
      prev.selectAll('path').forEach(function(path) {
        path.attr({
          stroke: 'none'
        });
      });
    }


    // function drawPreview() {
    //   var previewUrl = $('.preview-img-url').html();
    //
    //   var pattern = previewProjectSvg.image(previewUrl, 0, 0, 90, 90)
    //   .toPattern(0, 0, 90, 90)
    //   .attr({
    //     id: 'patternId',
    //     y: '60'
    //   });
    //
    //   cleanUpPreview(previewProjectSvg);
    //   previewProjectSvg.selectAll('path').forEach(function(path) {
    //     console.log('help');
    //     path.attr({
    //       fill: pattern,
    //       stroke: 'none'
    //     });
    //   });
    // }

    var previewBlockSvg = Snap('.preview-block svg');
    var previewBlockThumb = Snap('.preview-thumbnail svg');
    var finalBlock = Snap('.final-block svg');
    var modalBlock = Snap('.current-block .svg-editor svg');
    var previewProjectSvg = Snap('.preview-project svg');
    var previewBlock = $('.preview-block').html();
    var previewProject = $('.preview-project').html();


    function drawPreviewPng() {
      var svgString = new XMLSerializer().serializeToString(document.querySelector('.preview-block svg'));
      var canvas = document.getElementById("canvas");
      var ctx = canvas.getContext("2d");
      var DOMURL = self.URL || self.webkitURL || self;
      var img = new Image();
      var svg = new Blob([svgString], {type: "image/svg+xml;charset=utf-8"});
      var url = window.URL.createObjectURL(svg);
      console.log(url);

      img.onload = function() {
          ctx.drawImage(img, 0, 0);
          var png = canvas.toDataURL("image/png");
          console.log(png);
          document.querySelector('#png-container').innerHTML = '<img src="'+png+'"/>';
          DOMURL.revokeObjectURL(png);
          console.log('gotcha');
      };

      img.src = url;
      console.log(url)
      // imgUrl = '<img src="data:image/png;base64,<%= full_res_image  %>">'
      var pattern = previewProjectSvg.image(url, 0, 0, 90, 90)
      // var pattern = previewProject.image('http://www.mccallsquilting.com/images/wysiwyg_img/Celtic-Twist-300px_27999.jpg', 0, 0, 90, 90)
        .toPattern(0, 0, 90, 90)
        .attr({ id: 'patternId', y: '60'});
        console.log('i made an image')


      cleanUpPreview(previewProjectSvg);
      console.log(previewProjectSvg);
      console.log('joyridazzz');
      previewProjectSvg.selectAll('path').forEach(function(path) {
        // fillBlock.appendTo(path);
        console.log('i am in');
        path.attr({fill: pattern, stroke: 'none'});
      });
    }

    drawPreviewPng();


  //////////////////////////////////////////////////////////////////////////////
  //FUNCTIONS RELATED TO THUMBNAILS

    function initThumbnails () {
      $('.preview-thumbnail').on('click', function(ev) {
        clickThumbnail($(this))
      });
      clickThumbnail( $('.preview-thumbnail').eq(0) );
    }

    function clickThumbnail(thumb) {
      var thumbIndex = thumb.index();

      $('.preview-thumbnails .preview-thumbnail').removeClass('active');
      thumb.addClass('active');

      $('.current-preview .big-preview').removeClass('show');
      $('.current-preview .big-preview').eq(thumbIndex).addClass('show');
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
