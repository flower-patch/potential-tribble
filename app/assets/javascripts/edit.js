$(function () {
  var svg = Snap('#svg2');

  var palette = [];
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
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
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
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
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
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
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
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
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
  }, {
    id: '44250.jpg',
    url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
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

  // svg.selectAll('path').forEach(function(path) {
  //   var outline = path;
  //   outline.style.stroke = "blue";
  //   outline.style.stroke-width = "10px";
  //
  // });

  function drawSets() {
    var groups = $('.svg-editor').find('g g').clone();
    // var groups = (svg.selectAll('g')).items;
    console.log(groups);
    for (var i = 0; i < groups.length; ++i) {
      var baseSvg = $('.svg-editor').clone().remove('g').html();
      console.log(baseSvg);

      // why is this sometimes returning html, sometimes svg objects?
      var set = $(groups[i]).html();
      console.log(set);
      // var set = $(i).html();
      // console.log(set);
      $('.sets').append('<li>' + set + '</li>');
    }

    // why did this keep reading as undefined?
    // groups.forEach(function(group) {
    //   console.log(group);
    //   var set = $(group).html();
    //   console.log(set);
    //   $('.sets').append(set);
    // });
  }

  // drawSets();

  function addFabricMessage() {
    if (palette === undefined || palette.length === 0) {
    //  alt example from appointments app
    //   if (appts === undefined || appts.length === 0) {
    //      $('.no-frames').html(noFrames);
    //      $('.no-frames').fadeIn('slow');
    //  };
      $('.add-fabric-message').fadeIn('slow');
    }
  }

  addFabricMessage();

  function drawPalette(location, palette) {
    $(location).html(palette.map(function (fabric) {
      var li = $('<li class="fabric-preview"><img src="' + fabric.url +'"></li>');
      //.data(key, value) key= string 'fabric', value is fabric object
      // .data makes the thing a part of the DOM
      li.data('fabric', fabric);
      return li;
    }));
  }

  drawPalette('.palette', palette);

  var currFabric = palette[0];

  $('.palette').on('click', '.fabric-preview', function () {
    currFabric = $(this).data('fabric');
  });


  svg.selectAll('path').forEach(function (path) {
    //this only works with fill:none; svg's
    if (!path.attr('fill') || path.attr('fill') === 'none') {
      path.attr('fill', 'white');
    }
  });


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


  function applyFabricPatch(path) {
    //empty palette, nothing happens!
    if (!currFabric) return;
    //use id for snappy shtuffz
    var svgId = 'img_' + currFabric.id;
    //pattern is used here because of svg pattern tag
    var pattern = svg.select('#' + svgId);

    if (!pattern) {
      pattern = svg.image(currFabric.url, 0, 0, currFabric.size.width, currFabric.size.height)
      .toPattern(0, 0, currFabric.size.width, currFabric.size.height)
      .attr({ id: svgId });
    }

    path.attr('fill', pattern);
  }

  function clearFabricPatch(path) {
    path.attr('fill', '#ffffff');
  }

  function getGroup(path) {
    //empty palette, nothing happens!
    if (!currFabric) return;
    //use id for snappy shtuffz
    var group = path.parent();
    console.log(group);

    group.selectAll('path').forEach(applyFabricPatch);
  }

  var currSvg;


  function getCurrSvg() {
    //take html from div svg-editor
    currSvg = $('.svg-editor')
    return currSvg;
  }

  //takes preview into the modal
  function previewQuilt() {
    getCurrSvg();
    // FIX FOR a hellish bug with svgs & jQuery .html()
    // We take the svg-editor element and move it from the main content area
    // to the modal when the modal opens
    // var svgElement = $('.svg-editor');
    $('.fabric-modal .current-block').append(currSvg);
  }

  function saveQuilt() {
    getCurrSvg();
    // get the html of the currSvg object
    currSvg = $(currSvg).html();
    //set as the value of the hidden field
    $('.svg-input').val(currSvg);
  }

  $('form').submit(function() {
    saveQuilt();
    console.log(newSvg);
  });


  $('.open-fabric-modal-btn').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    previewQuilt();
    drawPalette('.current-palette', palette);
  });

  $('.close-fabric-modal-btn, .fabric-modal').on('click', function () {
    $('.fabric-modal-box').on('click', function(e) {
      e.stopPropagation();
    });
    $('.fabric-modal').toggleClass('show');
    // Once the modal closes, move the svg-editor element back into its original
    // area (.svg-editor-parent), in the main content.
    currSvg = $('.fabric-modal .current-block').children();
    $('.svg-editor-parent').append(currSvg);
  });

});
