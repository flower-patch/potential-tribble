$(function () {

  var svg = Snap('.svg-editor svg');
  var $svg = $('.svg-editor svg');

  //////////////////////////////////////////////////////////////////////////////
  //dummy palette
  var palette = [{
    id: 'patterns-by-danny-ivan.jpg',
    url: 'http://www.crafthubs.com/thumbs/patterns-by-danny-ivan.jpg',
    size: {
      width: 100,
      height: 100
    }
  }, {
    id: 'fun-with-shapes-and-patterns.jpg',
    url: 'http://www.crafthubs.com/thumbs/fun-with-shapes-and-patterns.jpg',
    size: {
      width: 50,
      height: 50
    }
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
    size: {
      width: 50,
      height: 50
    }
  }];

  //////////////////////////////////////////////////////////////////////////////
  //SET DEFAULTS for paths, makes the white if empty
  function clearFill(item) {
    item.selectAll('path').forEach(function(path) {
    //this only works with fill:none; svg's
      if (!path.attr('fill') || path.attr('fill') === 'none') {
        path.attr('fill', 'white');
      }
    });
  }

  clearFill(svg);

  //////////////////////////////////////////////////////////////////////////////
  //CREATE GROUPS AND MAKE THUMBNAILS
  //generating a thumbnail for each group as a set

  function generateSets(svgSelector, setList) {
    svg.selectAll('g g').forEach(function(group) {
      // clone the svg for each group without event handlers
      var groupId = group.attr('id');
      var clone = svgSelector.clone().off();
      var cloneSvg = Snap(clone[0]);

      cloneSvg.selectAll('#' + groupId + ' path').forEach(function(path) {
        path.attr('fill', '#c0c0c0');
      });

      // add each group's thumbnail as an li in .sets
      $(setList).append(clone
        .wrap('<li class="set"></li>')
        .parent()
        .data('groupId', groupId));
    });
  }

  generateSets($svg, '.sets');

  //////////////////////////////////////////////////////////////////////////////
  // FUNCTIONS that allow styling by group

  function setClass(group, cssClass) {
    getAllPaths(group).forEach(function(path) {
      path.attr('class', cssClass);
    });
  }

  function getAllPaths(group) {
    var groupId = $(group).data('groupId');
    return svg.selectAll('#' + groupId + ' path');
  }


  // too repetitive but I couldn't figure how to refactor (see below) to an
  // editSet() function with the $this object

  $('.set')
    // reduce opacity of all path in the set on thumbnail hover
    .hover(function() {
      setClass($(this), 'set-hover');
    },function() {
      setClass($(this), '');
    })
    // apply pattern to all paths in set on click
    .click(function() {
      getAllPaths(this).forEach(applyFabricPatch);
    })
    // remove on dblclick
    .dblclick(function(e) {
      getAllPaths(this).forEach(clearFabricPatch);
    });



    //////////////////////////////////////////////////////////////////////////////
    //DEPRECATED

    // function addFabricMessage() {
    //   if (palette === undefined || palette.length === 0) {
    //   alt example from appointments app
    //    if (appts === undefined || appts.length === 0) {
    //       $('.no-frames').html(noFrames);
    //       $('.no-frames').fadeIn('slow');
    //    };
    //     $('.add-fabric-message').fadeIn('slow');
    //   }
    // }

    // addFabricMessage();

  //////////////////////////////////////////////////////////////////////////////
  //CREATES FABRIC SWATCH PALETTE

  function drawPalette(location, palette) {
    $(location).html(palette.map(function (fabric) {
      var li = $('<li class="fabric-preview card"><button alt="Remove from palette" class="remove-fabric-btn icon-button"><i class="fa fa-minus-circle inner-button-icon"></i></button><div class="fabric-img-container"><img src="' + fabric.url + '"></div></li>');
      //.data(key, value) key= string 'fabric', value is fabric object
      // .data makes the thing a part of the DOM
      li.data('fabric', fabric);
      return li;
    }));
  }

  drawPalette('.palette', palette);


  //////////////////////////////////////////////////////////////////////////////

  var currFabric = palette[0];


  $('.palette').on('click', '.fabric-preview', function () {
    currFabric = $(this).data('fabric');
    $('.current-fabric').removeClass('current-fabric');
    $(this).addClass('current-fabric');
  });

  $('.fabric-preview').first().click();



  //////////////////////////////////////////////////////////////////////////////
  //EDIT PATCH

  editPatch(svg);


  function editPatch(block) {
    block.selectAll('path').forEach(function (path) {
      // required arbitrary boolean
      var prevent = false;
      // defines the functions called in timeout
      var timer = 0;

      path
      .click(function () {
        timer = setTimeout(function () {
          if (!prevent) {
            applyFabricPatch(path);
          }
          prevent = false;
        }, 200);
      })
      .dblclick(function () {
        clearTimeout(timer);
        prevent = true;
        clearFabricPatch(path);
      });
    });
  }

  //////////////////////////////////////////////////////////////////////////////
  //APPLY FABRIC PATCH


  function applyFabricPatch(path) {
    //empty palette, nothing happens!
    if (!currFabric) return;
    //use id for snappy shtuffz
    var patternId = 'img_' + currFabric.id;
    //pattern is used here because of svg pattern tag
    var pattern = svg.select('#' + patternId);

    if (!pattern) {
      pattern = svg.image(currFabric.url, 0, 0, currFabric.size.width, currFabric.size.height)
      .toPattern(0, 0, currFabric.size.width, currFabric.size.height)
      .attr({ id: patternId });
    }

    path.attr('fill', pattern);
  }

  function clearFabricPatch(path) {
    path.attr('fill', '#ffffff');
  }


  //////////////////////////////////////////////////////////////////////////////
  //deprecated atm

  function getGroup(path) {
    //empty palette, nothing happens!
    if (!currFabric) return;
    //use id for snappy shtuffz
    var group = path.parent();
    console.log(group);

    group.selectAll('path').forEach(applyFabricPatch);
  }

  /////////////////////////////////////////////////////////////////////////////
  //CURRENT SVG set as JQ element

  var currSvg;
  function getCurrSvg() {
    //take html from div svg-editor
    currSvg = $('.svg-editor')
    return currSvg;
  }
  //////////////////////////////////////////////////////////////////////////////
  /*
  TAKES PREVIEW INTO THE MODAL
  TO DO: REFACTOR
  */
  function previewQuilt() {
    getCurrSvg();
    /*
    FIX FOR a hellish bug with svgs & jQuery .html()
    We take the svg-editor element and move it from the main content area
    to the modal when the modal opens
    var svgElement = $('.svg-editor');
    */

    $('.fabric-modal .current-block').append(currSvg);
  }

  //////////////////////////////////////////////////////////////////////////////
  // SAVE QUILT

  function saveQuilt() {
    getCurrSvg();
    // get the html of the currSvg object
    currSvg = $(currSvg).html();
    //set as the value of the hidden field
    $('.svg-input').val(currSvg);
  }

  $('.new_quilt').submit(function() {
    saveQuilt();
    console.log(newSvg);
  });

  //////////////////////////////////////////////////////////////////////////////
  // CLEAR PATCHES MODAL

  $('.clear-patches-modal').on('click', function(e) {
    e.stopPropagation();
  });

  $('.clear-patches-btn, .clear-patches-modal-close, .clear-patches-modal-confirm')
    .on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $('.clear-patches-modal').toggleClass('show');
  });

  $('.clear-patches-modal-confirm').on('click', function() {
    var currPaths = svg.selectAll('path');
    currPaths.forEach(function(path) {
      clearFabricPatch(path);
    });
  });


  //////////////////////////////////////////////////////////////////////////////
  /*
  CALL API HERE on modal-open
  separate names for Spoonflower's API and fAkePI
  */



  $('.open-fabric-modal-btn').on('click', function () {
    Api.getPopularList().done(function(response) {
      var results = response.results[0].results;
      var resultElements = results.map(function(designItem) {
        var img = $('<img>');
        img.attr('data-id', designItem.id);
        img.attr('src', designItem.thumbnail_url);

        var imgCont = $('<div class="fabric-img-container"></div>');
        imgCont.append(img);

        var btn = $('<button alt="Add to palette" class="remove-fabric-btn icon-button"><i class="fa fa-plus-circle inner-button-icon"></i></button>')

        var designName = $('<h3 class="fabric-name">' + designItem.name + '</h3>');

        // this keeps coming in as undefined. Is it because of the underscore? Some privacy setting on api
        // var designer = $('<span class="designer-screen-name">' + designItem.sceen_name + '</span>');

        var li = $('<li></li>');
        li.data('item', designItem);
        li.addClass('fabric-preview, card');
        li.append(imgCont);
        li.append(btn);
        li.append(designName);
        // li.append(designer);

        return li;

        // var li = $('<li class="fabric-preview card">
        // <button alt="Remove from palette" class="remove-fabric-btn icon-button">
        // <i class="fa fa-minus-circle inner-button-icon"></i></button>
        // <div class="fabric-img-container">
        // <img src="' + fabric.url + '"></div></li>');

      });

      $('.fabric-modal-list').empty().append(resultElements);
    })
    $('.fabric-modal').toggleClass('show');
    previewQuilt();
    drawPalette('.current-palette', palette);
  });

  $('.fabric-modal-box').on('click', function(e) {
    e.stopPropagation();
  });

  $('.close-fabric-modal-btn, .fabric-modal').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    // Once the modal closes, move the svg-editor element back into its original
    // area (.svg-editor-parent), in the main content.
    currSvg = $('.fabric-modal .current-block').children();
    $('.svg-editor-parent').append(currSvg);
  });

  //////////////////////////////////////////////////////////////////////////////
  // COLOR PICKER

  $('#picker').colpick({
    // flat: true,
  	layout:'hex',
  	submit:0,
  	colorScheme:'light',
  	onChange:function(hsb,hex,rgb,el,bySetColor) {
  		$(el).css('border-color','#'+hex);
  		// Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
  		if(!bySetColor) $(el).val(hex);
  	}
  }).keyup(function(){
  	$(this).colpickSetColor(this.value);
  });

  //////////////////////////////////////////////////////////////////////////////
  //GET BY COLOR API CALL

  $('.fabric-modal-color-btn').on('click', function () {
    Api.getDesignByColor().done(function(response) {
      var results = response.results[0].results;
      var resultElements = results.map(function(designItem) {
        var img = $("<img>");
        img.attr('data-id', designItem.id);
        img.attr('src', designItem.thumbnail_url);

        var li = $('<li>');
        li.addClass('fabric-preview');
        li.append(img);

        return li;
      });

      $('.fabric-modal-list').empty().append(resultElements);
    })
    $('.fabric-modal').toggleClass('show');
    previewQuilt();
    drawPalette('.current-palette', palette);
  });

  $('.fabric-modal-box').on('click', function(e) {
    e.stopPropagation();
  });

  //////////////////////////////////////////////////////////////////////////////
  //GET BY QUERY API CALL


  $('.keyword-search').submit(function (e) {
    e.preventDefault();
    Api.getDesignByQuery($('input', this).val()).done(function(response) {
      var results = response.results[0].results;
      var resultElements = results.map(function(designItem) {
        var img = $('<img>');
        img.attr('data-id', designItem.id);
        img.attr('src', designItem.thumbnail_url);

        var li = $('<li>');
        li.addClass('fabric-preview');
        li.append(img);
        li.data('item', designItem);

        // this will get you the item
        //li.data('item')

        return li;
      });

      $('.fabric-modal-list').empty().append(resultElements);
    })
    //$('.fabric-modal').toggleClass('show');
    //previewQuilt();
    //drawPalette('.current-palette', palette);
  });

  $('.fabric-modal-box').on('click', function(e) {
    e.stopPropagation();
  });


  //////////////////////////////////////////////////////////////////////////////
  // DISABLE PROGRESS BUTTONS

  // $('.selected ~ .progress-element a').on('click', function(e) {
  //   e.preventDefault();
  // })

  // function disableProgressButtons() {
  //   var forwardButtons = $('.selected ~ .progress-element a');
  //   forwardButtons.attr("disabled","disabled");
  // }
  //
  // disableProgressButtons();
  //

  $(document).ready(function() {
    $('.selected.progress-element a, .selected ~ .progress-element a').attr('disable', 'disabled');
  });

});
