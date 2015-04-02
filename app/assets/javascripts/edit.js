$(function() {


  var svg = Snap('.svg-editor svg');

  if (svg) {
    editSvg(svg);
  }

  function editSvg(svg) {

    var $svg = $('.svg-editor svg');

    addFabricMessage();
    var palette = [];

    drawPalette('.palette', palette);


    //////////////////////////////////////////////////////////////////////////////
    //SET DEFAULTS for paths, makes them white if empty

    function clearFill(item) {
      item.selectAll('path').forEach(function(path) {
        //this only works with fill:none; svg's
        if (!path.attr('fill') || path.attr('fill') === 'none') {
          path.attr('fill', 'white');
        }
      });
    }

    clearFill(svg);

    ////////////////////////////////////////////////////////////////////////////////
    //CREATE GROUPS AND MAKE THUMBNAILS

    function generateSets(svgSelector, setList) {
      svg.selectAll('g g').forEach(function(group) {
        // clone the svg for each group without event handlers
        var groupId = group.attr('id');
        var clone = svgSelector.clone().off();
        var cloneSvg = Snap(clone[0]);

        //clear the clone to have clearThumbnails
        var thumbPaths = cloneSvg.selectAll('path');
        thumbPaths.forEach(function(path) {
          clearFabricPatch(path);
        });
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

    function generateThumbs(svgSelector, setList) {

    }

    ////////////////////////////////////////////////////////////////////////////////
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
      }, function() {
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



    ////////////////////////////////////////////////////////////////////////////////
    //CREATES FABRIC SWATCH PALETTE

    function drawPalette(location, palette) {
      console.log(palette);
      $(location).html(palette.map(function(fabric) {
        var li = $('<li class="fabric-preview card"><button alt="Remove from palette" class="remove-fabric-btn icon-button"><i class="fa fa-minus-circle inner-button-icon"></i></button><div class="fabric-img-container"><img src="' + fabric.thumbnail_url + '"></div></li>');
        //.data(key, value) key= string 'fabric', value is fabric object
        // .data makes the thing a part of the DOM
        li.data('fabric', fabric);
        return li;
      }));
      checkDuplicateSwatches(designItem);
    }


    //////////////////////////////////////////////////////////////////////////////
    //Show message prompting user to add fabrics if there are none.

    function addFabricMessage() {
      if (palette.length === 0) {
        $('.add-fabric-message').fadeIn(750);
        $('.open-fabric-modal-btn').css('visibility', 'visible')
          .css('opacity', '1');
      } else {
        $('.add-fabric-message').fadeOut(10);
      }
    }

    //////////////////////////////////////////////////////////////////////////////
    //CREATES FABRIC SWATCH PALETTE

    function drawPalette(location, palette) {
      $(location).html(palette.map(function(fabric) {
        var li = $('<li class="fabric-preview card">' +
          '<button alt="Remove from palette" class="remove-fabric-btn icon-button">' +
          '<i class="fa fa-minus-circle inner-button-icon"></i>' +
          '</button>' +
          '<div class="fabric-img-container">' +
          '<img>' +
          '</div>' +
          '</li>');
        li.find('img')
          .attr('src', fabric.thumbnail_url)
          .attr('data-id', fabric.id)

        //.data(key, value) key= string 'fabric', value is fabric object
        // .data makes the thing a part of the DOM
        li.data('fabric', fabric);
        return li;
      }));

    }


    //////////////////////////////////////////////////////////////////////////////
    // SETTING currFabric


    currFabric = palette[0];



    $('.palette').on('click', '.fabric-preview', function() {

      var designId;
      currFabric = $(this).data('fabric');
      var designId = currFabric.id;
      //Api.getDesignById(designId).done(function(response) {
      // var baseUrl = 'https://fakepi.herokuapp.com/api/v1/design/';
      var baseUrl = 'http://api.v1.spoonflower.com/design/';
      var previewWidth = 400;
      var previewHeight = 400;
      var printWidth = 9;
      var printHeight = 9;
      var url = baseUrl + 'previewImage/' +
        designId + '?' + 'print_width=' +
        printWidth + '&print_height=' +
        printHeight + '&preview_width_pixels=' +
        previewWidth + '&preview_height_pixels=' +
        previewHeight;

      currFabric.preview_url = url;
      $('.current-fabric').removeClass('current-fabric');
      $(this).addClass('current-fabric');
      //return designId;
    });



    //////////////////////////////////////////////////////////////////////////////
    //JQ TIMEOUTS

    function initializePalette(timeout) {
      setTimeout(function() {
        addFabricMessage();
      }, timeout);
      if (palette.length > 0) {
        $('.fabric-preview').first().click();
      }
    }

    initializePalette(1000);

    $('.palette').on('click', '.remove-fabric-btn', onRemoveClick);

    // Elsewhere, when the fabric-modal is clicked, we stop propagation on all click events.
    // So we can't listen listen to click events on the fabric modal or any of its parents, because
    // click events never reach that far because they are stopPropagation()'d.
    // To get around this, we listen to click events on the children of the fabric modal.
    $('.fabric-modal').children().on('click', '.remove-fabric-btn', onRemoveClick);

    function onRemoveClick(e) {
      var img = $(this).parent().find('img');
      var fabricId = img.attr('data-id');
      var fabricSrc = img.attr('src');
      for (var i = 0; i < palette.length; i++) {
        if (palette[i].id === fabricId) {
          palette.splice(i, 1);
          break;
        }
      }

      drawPalette('.current-palette, .palette', palette);
      addFabricMessage();

    }

    initializePalette(1000);

    var timeout = 500;

    setTimeout(function() {

      $('.palette .fabric-preview').on('click', 'button', function(e) {

        e.stopPropagation();
        console.log('click rmv-btn');
        console.log(palette.valueOf());
        var parent = $(this).parent('.fabric-preview');
        var position = parent.index();
        console.log(position);
        palette.splice(position, 1);
        drawPalette('.current-palette, .palette', palette);
        console.log('new palette:' + palette.valueOf());

      });

    }, timeout);


    ////////////////////////////////////////////////////////////////////////////////
    // EDIT PATCH

    editPatch(svg);

    function editPatch(block) {
      block.selectAll('path').forEach(function(path) {
        // required arbitrary boolean
        var prevent = false;
        // defines the functions called in timeout
        var timer = 0;

        path
          .click(function() {
            timer = setTimeout(function() {
              if (!prevent) {
                applyFabricPatch(path);
              }
              prevent = false;
            }, 200);
          })
          .dblclick(function() {
            clearTimeout(timer);
            prevent = true;
            clearFabricPatch(path);
          });
      });
    }

    ////////////////////////////////////////////////////////////////////////////////
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
          .toPattern(0, 0, 810, 810)
          .attr({
            id: patternId,
            y: '242',
            "data-url": currFabric.thumbnail_url
          });

      }

      path.attr('fill', pattern);
    }

    function clearFabricPatch(path) {
      path.attr('fill', '#ffffff');
    }



    ////////////////////////////////////////////////////////////////////////////////
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

    ////////////////////////////////////////////////////////////////////////////////
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
    });

    ////////////////////////////////////////////////////////////////////////////////
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


    ////////////////////////////////////////////////////////////////////////////////
    //CALL API HERE on modal-open

    function showPopularResults() {
      Api.getPopularList().done(function(response) {
        var results = response.results[0].results;
        var resultElements = apiResultToElements(results);

        $('.fabric-modal-list').empty().append(resultElements);
      })
    }

    $('.popular-search-form').submit(function(e) {
      e.preventDefault();
      showPopularResults();
    });

    $('.open-fabric-modal-btn').on('click', function() {
      console.log('open fabric clicked');
      showPopularResults();

      previewQuilt();
      drawPalette('.current-palette', palette);
      setTimeout(function() {
        $('.fabric-modal').addClass('show');
        $('body').addClass('no-scroll');
      }, 10);
    });

    $('.fabric-modal-box').on('click', function(e) {
      e.stopPropagation();
    });

    $('.close-fabric-modal-btn, .fabric-modal').on('click', function() {
      $('.fabric-modal').toggleClass('show');
      console.log('close modal');
      $('body').removeClass('no-scroll');
      // Once the modal closes, move the svg-editor element back into its original
      // area (.svg-editor-parent), in the main content.
      currSvg = $('.fabric-modal .current-block').children();
      $('.svg-editor-parent').append(currSvg);

      initializePalette(1000);
      addFabricMessage();
    });

    ////////////////////////////////////////////////////////////////////////////////
    // COLOR PICKER

    $('#picker').colpick({
      // flat: true,
      layout: 'hex',
      submit: 0,
      colorScheme: 'light',
      onChange: function(hsb, hex, rgb, el, bySetColor) {
        $(el).css('border-color', '#' + hex);
        // Fill the text box just if the color was set using the picker,
        // and not the colpickSetColor function.
        if (!bySetColor) $(el).val(hex);
      }
    }).keyup(function() {
      $(this).colpickSetColor(this.value);
    });

    ////////////////////////////////////////////////////////////////////////////////
    //GET BY COLOR API CALL

    $('.color-search').submit(function(e) {
      e.preventDefault();
      Api.getDesignByColor($('input', this).val()).done(function(response) {
        var results = response.results[0].results;
        var resultElements = apiResultToElements(results);

        $('.fabric-modal-list').empty().append(resultElements);
      })
    });

    $('.fabric-modal-box').on('click', function(e) {
      e.stopPropagation();
      console.log('click fabric modal box');
    });

    ////////////////////////////////////////////////////////////////////////////////
    //GET BY KEYWORD API CALL

    $('.keyword-search').submit(function(e) {
      e.preventDefault();
      Api.getDesignByKeyword($('input', this).val()).done(function(response) {
        var results = response.results[0].results;
        var resultElements = apiResultToElements(results);
        if (results.length === 0) {
          $('.fabric-modal-list').empty().append('<i class="fa fa-frown-o"></i> There are no fabrics matching your keyword. Please try again.');
          $('.fabric-modal-list').addClass('error');
        } else {
          $('.fabric-modal-list').empty().append(resultElements);

        }

      });

    });

    $('.fabric-modal-box').on('click', function(e) {
      e.stopPropagation();
    });

    ////////////////////////////////////////////////////////////////////////////////
    //CHECK FOR DUPLICATES

    function checkDuplicateSwatches(designItem) {
      var newSwatchId = designItem.id;
      console.log(newSwatchId);
      var position = palette.indexOf(designItem);
      console.log(position);
      console.log(newSwatchId);
      console.log(palette.valueOf());
      for (var object in palette) {
        var oldSwatch = palette[object];
        var oldSwatchId = oldSwatch.id;
        try {
          if (oldSwatchId !== newSwatchId) {
            drawPalette('.current-palette, .palette', palette);
          } else {
            throw new Error('oldSwatchId === newSwatchId');
            setTimeout(function() {
              $('.current-palette.fabric-preview-card').last().remove();
            }, 10);
          }
        } catch (e) {
          console.log(e.name + '' + e.message);
          return alert('Do not add the same fabric design more than once to your palette.');
        }
      }
    }

    ////////////////////////////////////////////////////////////////////////////////
    //Translate API calls to html

    function apiResultToElements(results) {

      return results.map(function(item) {
        return addPaletteToPreview(item);
      });
    }

    function addPaletteToPreview(designItem) {
      // When we get a result back from the API, if that result already exists
      // in our palette, don't display it to the user.
      // So in our for loop, if a palette with this id already exists, then abort displaying it.
      for (var i = 0; i < palette.length; i++) {
        if (palette[i].id === designItem.id) {
          return; //stop the rest of the fn from running.
        }
      }

      var img = $('<img>');
      img.attr('data-id', designItem.id);
      img.attr('src', designItem.thumbnail_url);

      var imgCont = $('<div class="fabric-img-container"></div>');
      imgCont.append(img);

      var btn = $('<button alt="Add to palette" class="remove-fabric-btn icon-button"><i class="fa fa-plus-circle inner-button-icon"></i></button>')

      var designName = $('<div class="fabric-name-container"><h3 class="fabric-name">' + designItem.name + '</h3></div>');

      var li = $('<li></li>');
      li.data('item', designItem);
      li.addClass('fabric-preview card search-result');
      li.append(imgCont);
      li.append(btn);
      li.append(designName);

      //Add swatches from modal to palette
      li.on('click', function() {

        palette.push({
          id: $(this).find('img').attr('data-id'),
          thumbnail_url: $(this).find('img').attr('src')
        })
        drawPalette('.current-palette, .palette', palette);
        li.remove();
      })

      return li;
    }

    $('.open-fabric-modal-btn').on('click', function() {
      Api.getPopularList().done(function(response) {
        var results = response.results[0].results;
        var resultElements = apiResultToElements(results);
        $('.fabric-modal-list').empty().append(resultElements);
      })
      $('.fabric-modal').toggleClass('show');
      previewQuilt();
      drawPalette('.current-palette', palette);
    });
  }

});
