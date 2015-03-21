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
      path.click(function () {
          applyFabricPatch(path);
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


  function previewQuilt() {
    getCurrentSvg();
    console.log(newSvg);
    $('.current-block').html(newSvg);
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
    // Testing
    // alert(newSvg);
    // alert('save');
  });

  // $('.open-fabric-modal, .close-fabric-modal').on('click', function () {
  //   $('.fabric-modal').toggleClass('show');
  //   previewQuilt();
  //   $('.svg-editor').html(newSvg);
  //   editPatch(newSvg);
  // });

  $('.open-fabric-modal').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    previewQuilt();
    newSvg = $('.current-block').html();
    return newSvg;
  });

  $('.close-fabric-modal').on('click', function () {
    $('.fabric-modal').toggleClass('show');
    // $('.svg-editor').html(newSvg);
    // newSvg = Snap(newSvg);
    // editPatch(newSvg);
  });

});
