////////////////////////////////////////////////////////////////////////////
// CALLING FUNCTIONS FOR DEALING WITH PREVIEWS RENDERING/STYLING

$(function() {

  var previewBlockSvg = Snap('.preview-block svg');
  var previewBlockThumb = Snap('.preview-thumbnail svg');
  var finalBlock = Snap('.final-block svg');
  var modalBlock = Snap('.current-block .svg-editor svg');

  if (previewBlockSvg) {
    // || finalBlock || modalBlock
    runPreviewPage();
  }

  function runPreviewPage() {

    cleanUpPreview(previewBlockSvg);

    cleanUpPreview(previewBlockThumb);

    // cleanUpPreview(finalBlock);

    drawPreview();

    initThumbnails();
  }

  function cleanUpPreview(prev) {
    prev.selectAll('path').forEach(function(path) {
      path.attr({
        stroke: 'none'
      });
    });
  }

  function drawPreview() {
    var projectId = $('.preview-block').data('project');
    console.log(projectId);
    var projectBlocks;

    function projectClass(project) {
      $('.preview-project').addClass(project);
    }

    //determine the number of blocks to repeat based on project_id
    if (projectId === 1) {
      projectBlocks = 120;
      projectClass('queen');
    } else if (projectId === 2) {
      projectBlocks = 80;
      projectClass('twin');
    } else if (projectId === 3) {
      projectBlocks = 20;
      projectClass('lap');
    } else if (projectId === 4) {
      projectBlocks = 1;
      projectClass('single-block');
    } else if (projectId === 5) {
      projectBlocks = 1;
      projectClass('doll');
    };

    var svgXml = document.querySelector('.preview-block svg').outerHTML;
    console.log(svgXml);
    var tiledSvgs = '';

    for (var x = 0; x < projectBlocks; ++x) {
      tiledSvgs += svgXml;
    }

    $('.preview-project').append(tiledSvgs);

    var projectThumbnail = $('.preview-project').clone()
    .removeClass('big-preview')
    .addClass('small-preview');

    $('.project-preview-thumbnail').append(projectThumbnail);
  }



  //////////////////////////////////////////////////////////////////////////////
  //FUNCTIONS RELATED TO a

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
    }

  });
