  //
  // //////////////////////////////////////////////////////////////////////////////
  // /*
  // CALL API HERE on modal-open
  // separate names for Spoonflower's API and fAkePI
  // */
  // function showPopularResults() {
  //   Api.getPopularList().done(function(response) {
  //     var results = response.results[0].results;
  //     var resultElements = apiResultToElements(results);
  //
  //     $('.fabric-modal-list').empty().append(resultElements);
  //   })
  // }
  //
  // $('.popular-search-form').submit(function(e) {
  //   e.preventDefault();
  //   showPopularResults();
  // });
  //
  // $('.open-fabric-modal-btn').on('click', function () {
  //   console.log('open fabric clicked');
  //   showPopularResults();
  //
  //   previewQuilt();
  //   drawPalette('.current-palette', palette);
  //   setTimeout(function() {
  //     $('.fabric-modal').addClass('show');
  //   }, 10);
  // });
  //
  // $('.fabric-modal-box').on('click', function(e) {
  //   e.stopPropagation();
  // });
  //
  // $('.close-fabric-modal-btn, .fabric-modal').on('click', function () {
  //   $('.fabric-modal').toggleClass('show');
  //   console.log('close modal');
  //   // Once the modal closes, move the svg-editor element back into its original
  //   // area (.svg-editor-parent), in the main content.
  //   currSvg = $('.fabric-modal .current-block').children();
  //   $('.svg-editor-parent').append(currSvg);
  // });
  //
  // //////////////////////////////////////////////////////////////////////////////
  // // COLOR PICKER
  //
  // // $('#picker').colpick({
  // //   // flat: true,
  // //   layout:'hex',
  // //   submit:0,
  // //   colorScheme:'light',
  // //   onChange:function(hsb,hex,rgb,el,bySetColor) {
  // //     $(el).css('border-color','#'+hex);
  // //     // Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
  // //     if(!bySetColor) $(el).val(hex);
  // //   }
  // // }).keyup(function(){
  // //   $(this).colpickSetColor(this.value);
  // // });
  //
  // //////////////////////////////////////////////////////////////////////////////
  // //GET BY COLOR API CALL
  //
  // $('.color-search').submit( function (e) {
  //   e.preventDefault();
  //   Api.getDesignByColor($('input', this).val()).done(function(response) {
  //     var results = response.results[0].results;
  //     var resultElements = apiResultToElements(results);
  //
  //     $('.fabric-modal-list').empty().append(resultElements);
  //   })
  // //   $('.fabric-modal').toggleClass('show');
  // //   previewQuilt();
  // //   drawPalette('.current-palette', palette);
  // });
  //
  // $('.fabric-modal-box').on('click', function(e) {
  //   e.stopPropagation();
  //   console.log('click fabric modal box');
  // });
  //
  // //////////////////////////////////////////////////////////////////////////////
  // //GET BY KEYWORD API CALL
  //
  // $('.keyword-search').submit(function (e) {
  //   e.preventDefault();
  //   Api.getDesignByKeyword($('input', this).val()).done(function(response) {
  //     var results = response.results[0].results;
  //     var resultElements = apiResultToElements(results);
  //
  //     $('.fabric-modal-list').empty().append(resultElements);
  //   })
  //   // $('.fabric-modal').toggleClass('show');
  //   // previewQuilt();
  //   // drawPalette('.current-palette', palette);
  // });
  //
  // $('.fabric-modal-box').on('click', function(e) {
  //   e.stopPropagation();
  // });
  //
  // function apiResultToElements(results) {
  //   return results.map(function(designItem) {
  //     var img = $('<img>');
  //     img.attr('data-id', designItem.id);
  //     img.attr('src', designItem.thumbnail_url);
  //
  //     var imgCont = $('<div class="fabric-img-container"></div>');
  //     imgCont.append(img);
  //
  //     var btn = $('<button alt="Add to palette" class="remove-fabric-btn icon-button"><i class="fa fa-plus-circle inner-button-icon"></i></button>')
  //
  //     var designName = $('<div class="fabric-name-container"><h3 class="fabric-name">' + designItem.name + '</h3></div>');
  //
  //     // this keeps coming in as undefined. Is it because of the underscore? Some privacy setting on api
  //     // var designer = $('<span class="designer-screen-name">' + designItem.sceen_name + '</span>');
  //
  //     var li = $('<li></li>');
  //     li.data('item', designItem);
  //     li.addClass('fabric-preview card search-result');
  //     li.append(imgCont);
  //     li.append(btn);
  //     li.append(designName);
  //     // li.append(designer);
  //
  //     return li;
  //   });
  // }
  //
  //
  // $('.open-fabric-modal-btn').on('click', function () {
  //   Api.getPopularList().done(function(response) {
  //     var results = response.results[0].results;
  //     var resultElements = apiResultToElements(results);
  //     $('.fabric-modal-list').empty().append(resultElements);
  //   })
  //   $('.fabric-modal').toggleClass('show');
  //   previewQuilt();
  //   drawPalette('.current-palette', palette);
  // });
