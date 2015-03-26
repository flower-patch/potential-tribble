/*
* FABRIC-MODAL-JS
*/

/*
* MODAL OPEN CLICK EVENT
* API CALL getPopularList
*/
$('.open-fabric-modal-btn').on('click', function () {
  Api.getPopularList().done(function(response) {
    var results = response.results[0].results;
    console.log(results);
    // var designItem = JSON.parse(DESIGN_ITEM);
    // var results = [DESIGN_ITEM];

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


//////////////////////////////////////////////////////////////////////////////
// SAVE QUILT


function saveQuilt() {
  getCurrSvg();
  // get the html of the currSvg object
  currSvg = $(currSvg).html();
  //set as the value of the hidden field
  $('.svg-input').val(currSvg);
}

$('.clear-patches-btn, .clear-patches-modal-close, .clear-patches-modal-confirm')
.on('click', function(e) {
e.preventDefault();
e.stopPropagation();
$('.clear-patches-modal').toggleClass('show');
});


$('form').submit(function() {
  saveQuilt();
  console.log(newSvg);
});


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

/*
* COLOR PICKER FUNCTION
*/

  /*
  $('.color-search-bar').colorpicker();
  });
  */

/*
* SEARCH FUNCTION
*/
