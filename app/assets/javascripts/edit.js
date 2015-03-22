$(function () {
  var svg = Snap('#svg2');

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
  }];

  function drawPalette(palette) {
    $('.palette, .current-palette').html(palette.map(function (fabric) {
      var li = $('<li class="fabric-preview"><img src="' + fabric.url +'"></li>');
      //.data(key, value) key= string 'fabric', value is fabric object
      // .data makes the thing a part of the DOM
      li.data('fabric', fabric);
      return li;
    }));
  }

  drawPalette(palette);

  var currFabric = palette[0];

  console.log(currFabric);


  $('.palette').on('click', '.fabric-preview', function () {
    currFabric = $(this).data('fabric');
    console.log(currFabric);
  });


  svg.selectAll('path').forEach(function (path) {
    //this only works with fill:none; svg's
    console.log(path.attr('fill'));
    if (!path.attr('fill') || path.attr('fill') === 'none') {
      console.log(path);
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

  var newSvg;


  function getCurrentSvg() {
    //take html from div svg-editor
    newSvg = $('.svg-editor').html();
    return newSvg;
  }

  //takes preview into the modal
  function previewQuilt() {
    getCurrentSvg();
    // FIX FOR a hellish bug with svgs & jQuery .html()
    // We take the svg-editor element and move it from the main content area
    // to the modal when the modal opens
    var svgElement = $('.svg-editor');
    $('.fabric-modal .current-block').append(svgElement);
  }

  function saveQuilt() {
    getCurrentSvg();
    console.log(newSvg);
    //set as the value of the hidden field
    $('.svg-input').val(newSvg);
  }

  $('form').submit(function() {
    saveQuilt();
    alert(newSvg);
    alert('save');
  });


  $('.open-fabric-modal').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    previewQuilt();
  });

  $('.close-fabric-modal').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    // Once the modal closes, move the svg-editor element back into its original
    // area (.svg-editor-parent), in the main content.
    var svgElement = $('.fabric-modal .current-block').children();
    $('.svg-editor-parent').append(svgElement);
  });

});
