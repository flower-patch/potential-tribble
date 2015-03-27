$(function() {

  var svg = Snap('.svg-editor svg');
  var $svg = $('.svg-editor svg');

  //////////////////////////////////////////////////////////////////////////////
  //dummy palette
  var palette = [{
    id: 'patterns-by-danny-ivan.jpg',
    url: 'http://www.crafthubs.com/thumbs/patterns-by-danny-ivan.jpg',
    size: {
      width: 50,
      height: 50
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
  function clearFill(path) {
    path.selectAll('path').forEach(function(path) {
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
    .dblclick(function() {
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
    $(location).html(palette.map(function(fabric) {
      var li = $('<li class="fabric-preview"><img src="' + fabric.url + '"></li>');
      //.data(key, value) key= string 'fabric', value is fabric object
      // .data makes the thing a part of the DOM
      li.data('fabric', fabric);
      return li;
    }));
  }

  drawPalette('.palette', palette);


  //////////////////////////////////////////////////////////////////////////////
  //SETTING CURRENT FABRIC VARIABLE

  var currFabric = palette[0];

  // showCurrFabric();

  $('.palette').on('click', '.fabric-preview', function() {
    currFabric = $(this).data('fabric');
    showCurrFabric();
  });


  // // add a class to li of currFabric
  // // this isn't working,
  // $('.palette .fabric-preview').each(function(item) {
  //   // it's returning undefined
  //   console.log(item);
  //   var listItem = $(item).html();
  //   console.log(listItem.fabric);
  //   if (listItem.data.id === currFabric.id) {
  //     listItem.addClass('current-fabric');
  //     return;
  //   } else {
  //     listItem.removeClass('current-fabric')
  //   }
  // });

  // add a class to li of currFabric
  // this isn't working,

  function showCurrFabric() {
    $('.palette').children().forEach(function(item) {
      // it's returning undefined
      console.log(item);
      console.log(listItem.fabric);
      if (listItem.data.id === currFabric.id) {
        listItem.addClass('current-fabric');
        return;
      } else {
        listItem.removeClass('current-fabric')
      };
    });
  }


  //////////////////////////////////////////////////////////////////////////////
  //EDIT PATCH

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
        .attr({
          id: patternId
        });
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


  //////////////////////////////////////////////////////////////////////////////
  // SAVE QUILT

  function saveQuilt() {
    getCurrSvg();
    // get the html of the currSvg object
    currSvg = $(currSvg).html();
    //set as the value of the hidden field
    $('.svg-input').val(currSvg);
  }

  $('form').submit(function() {
    saveQuilt();
    // console.log(newSvg);
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

});
