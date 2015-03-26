// $(function () {
//   $('.open-fabric-modal-btn').on('click', function () {
//     Api.getDesignList().done(function(response) {
//       var results = response.results[0].results;
//       var designItem = JSON.parse(DESIGN_ITEM);
//       // var results = [DESIGN_ITEM];
//
//       var resultElements = results.map(function(designItem) {
//         var img = $("<img>");
//         img.attr('data-id', designItem.id);
//         img.attr('src', designItem.thumbnail_url);
//
//         var li = $('<li>');
//         li.addClass('fabric-preview');
//         li.append(img);
//
//         return li;
//       });
//       $('.fabric-modal-list').empty().append(resultElements);
//       })
//       $('.fabric-modal').toggleClass('show');
//       previewQuilt();
//       drawPalette('.current-palette', palette);
//     });
//
//     $('.fabric-modal-box').on('click', function(e) {
//       e.stopPropagation();
//     });
//
//     $('.close-fabric-modal-btn, .fabric-modal').on('click', function () {
//       $('.fabric-modal').toggleClass('show');
//       // Once the modal closes, move the svg-editor element back into its original
//       // area (.svg-editor-parent), in the main content.
//       currSvg = $('.fabric-modal .current-block').children();
//       $('.svg-editor-parent').append(currSvg);
//     });
//   });
