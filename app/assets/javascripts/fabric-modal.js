$(function() {

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


  var currSvg;

  function getCurrSvg() {
    //take html from div svg-editor
    currSvg = $('.svg-editor')
    return currSvg;
  }

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

  //////////////////////////////////////////////////////////////////////////////
  /*
  CALL API HERE on modal-open
  separate names for Spoonflower's API and fAkePI
  */

  $('.open-fabric-modal-btn').on('click', function() {
    // Api.getDesignByQuery().done(function(response) {
    Api.getPopularList().done(function(response) {
    //Api.getDesignbyColor().done(function(response) {
      var results = response.results[0].results;
      // var designItem = JSON.parse(DESIGN_ITEM);
      // var results = [DESIGN_ITEM];

      var resultElements = results.map(function(designItem) {
        var img = $("<img>");
        img.attr('data-id', designItem.id);
        img.attr('src', designItem.thumbnail_url);
        img.attr('user', designItem.user_id.screen_name);


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

  $('.close-fabric-modal-btn, .fabric-modal').on('click', function() {
    $('.fabric-modal').toggleClass('show');
    // Once the modal closes, move the svg-editor element back into its original
    // area (.svg-editor-parent), in the main content.
    currSvg = $('.fabric-modal .current-block').children();
    $('.svg-editor-parent').append(currSvg);
  });

  /*
  * SEARCH with String BAR
  * Make API on form submit, then set it as var query with 'this'
  */

  //prevent Default and stop progration attach to click event, not submit
  //  $('.fabric-modal-search-button').on('click', function(e) {
  // });

  //not working, goes back to home page
  $('.fabric-modal-search-button').on('click', function(e) {

    var query = $(this);

    Api.getDesignByQuery().done(function(response) {
      var results = response.results[0].results;
      // var designItem = JSON.parse(DESIGN_ITEM);
      // var results = [DESIGN_ITEM];

      var resultElements = results.map(function(designItem) {
        var img = $("<img>");
        img.attr('data-id', designItem.id);
        img.attr('src', designItem.thumbnail_url);
        img.attr('user', designItem.user_id.screen_name);


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
});





//////////////////////////////////////////////////////////////////////////////
// COLOR PICKER

// $('.color-search-bar').colorpicker();
// });
