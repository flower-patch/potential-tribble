//////////////////////////////////////////////////////////////////////////////
//DEPRECATED
// add a class to li of currFabric

// // add a class to li of currFabric
// // this isn't working,
// $('.palette .fabric-preview').forEach(function(item) {
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

// function showCurrFabric() {
//   $('.palette').children().forEach(function(item) {
//     // it's returning undefined
//     console.log(item);
//     console.log(listItem.fabric);
//     if (listItem.data.id === currFabric.id) {
//       listItem.addClass('current-fabric');
//       return;
//     } else {
//       listItem.removeClass('current-fabric')
//     };
//   });
// }


//////////////////////////////////////////////////////////////////////////////
//DEPRECATED


/*
function addFabricMessage() {
  if (palette === undefined || palette.length === 0) {
  //alt example from appointments app
  // if (appts === undefined || appts.length === 0) {
      $('.no-frames').html(noFrames);
      $('.no-frames').fadeIn('slow');
   };
    $('.add-fabric-message').fadeIn('slow');
  }
}
addFabricMessage();*/



//////////////////////////////////////////////////////////////////////////////
//DEPRECATED

/*
function getGroup(path) {
  //empty palette, nothing happens!
  if (!currFabric) return;
  //use id for snappy shtuffz
  var group = path.parent();
  console.log(group);
  group.selectAll('path').forEach(applyFabricPatch);
}*/

//////////////////////////////////////////////////////////////////////////////
// DISABLE PROGRESS BUTTONS

// $('.selected ~ .progress-element a').on('click', function(e) {
//   alert('hiya');
//   e.preventDefault();
//   e.stopPropagation();
//   return false;
// })

// function disableProgressButtons() {
//   var forwardButtons = $('.selected ~ .progress-element a');
//   forwardButtons.attr("disabled","disabled");
// }
//
// disableProgressButtons();

//////////////////////////////////////////////////////////////////////////////
//DEPRECATED

/*
function disableProgressButtons() {
  var forwardButtons = $('.selected ~ .progress-element a');
  forwardButtons.attr("disabled","disabled");
}
disableProgressButtons();
*/


//DEPRECATED TAKE 2
/*
$('.selected ~ .progress-element a').on('click', function(e) {
  e.preventDefault();
})
*/
//////////////////////////////////////////////////////////////////////////////
// function editSet() {
//   var groupId = $(this).data('groupId');
//   var setPaths = svg.selectAll('#' + groupId + ' path');
//   $('.set')
//     // reduce opacity of all path in the set on thumbnail hover
//     // .hover(function() {
//     //   setPaths.forEach(applyFabricPatch);
//     // })
//     // apply pattern to all paths in set on click
//     .click(function() {
//       setPaths.forEach(applyFabricPatch);
//     })
//     // remove on dblclick
//     .dblclick(function() {
//       setPaths.forEach(clearFabricPatch);
//     });
// }
//
// editSet();

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

// function showCurrFabric() {
//   $('.palette').children().forEach(function(item) {
//     // it's returning undefined
//     console.log(item);
//     console.log(listItem.fabric);
//     if (listItem.data.id === currFabric.id) {
//       listItem.addClass('current-fabric');
//       return;
//     } else {
//       listItem.removeClass('current-fabric')
//     };
//   });
// }

//////////////////////////////////////////////////////////////////////////////
//dummy palette
// var palette = [{
//   id: 'patterns-by-danny-ivan.jpg',
//   url: 'http://www.crafthubs.com/thumbs/patterns-by-danny-ivan.jpg',
//   size: {
//     width: 100,
//     height: 100
//   }
// }, {
//   id: 'fun-with-shapes-and-patterns.jpg',
//   url: 'http://www.crafthubs.com/thumbs/fun-with-shapes-and-patterns.jpg',
//   size: {
//     width: 50,
//     height: 50
//   }
// }, {
//   id: '44250.jpg',
//   url: 'http://www.housefabric.com/assets/ProductDetail/44250.jpg',
//   size: {
//     width: 50,
//     height: 50
//   }
// }];


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



// var results = response.results[0].results;
// var resultElements = apiResultToElements(results);

//////////////////////////////////////////////////////////////////////////////
//  currFabric();
//
// function currFabric() {

// $('.palette').on('click', 'fabric-preview', function(){
//   currFabric = $(this).data('fabric');
//   var designId = currFabric.id;
//   console.log(designId);
//   //refresh currFabric on click
//   $('.current-fabric').removeClass('current-fabric');
//   $(this).addClass('current-fabric');
// });
//
// $('.fabric-preview').first().click();

//   Api.getDesignById().done(function(response{
//
// }))
//   return currFabric;
// }

// var Api = setupSpoonflowerApi();
//
// function setupSpoonflowerApi() {
//   var baseUrl = 'http://api.v1.spoonflower.com/design/';
//
//   function fetchUrl(url) {
//     var promise = $.Deferred();
//     // this has to change for JSONP
//     var req = $.ajax({
//       //url property with this value
//       url: url,
//       dataType: "jsonp",
//       timeout: 5000, // fake .fail() a lot of time for the request to be successfully completed
//       success: function(data) {
//         promise.resolve(data);
//       },
//       error: function(data) {
//         promise.reject(req, 'Unknown error', data);
//       }
//     });
//     return promise;
//   }
//
//   var self = {
//
//     getPopularList: function(limit) {
//       var limit = '1';
//       var freshtastic = '&sort=freshtastic';
//       var url = baseUrl + 'search?limit=' + limit + freshtastic;
//       return fetchUrl(url);
//     },

    /*
    API Call
    http://api.v1.spoonflower.com/design/
    previewImage/
    1454355?print_width=4.5&print_height=4.5&preview_width_pixels=150&preview_height_pixels=150
    for id = 1454355, print_width=4.5 inches, print_height = 4.5 inches
    preview_width = 150px, preview_height = 150px
    var baseUrl= http://api.v1.spoonflower.com/design/
      STICK WITH PIXELS AND INCHES!
      previewWidth = 150; (px)
      previewHeight = 150; (px)
      var printWidth = 4.5; (in)
      var printHeight  = 4.5; (in)
    */

    /*
    getDesignById: function(designId) {
      var url = baseUrl + 'previewImage/' +
        designId + '?' + 'print_width=' +
        printWidth + '&print_height=' +
        printHeight + '&preview_width_pixels=' +
        previewWidth + '&preview_height_pixels=' +
        previewHeight;
      return fetchUrl(url);
    }*/

    //
    //     /*
    //     API Call
    //     http://api.v1.spoonflower.com/design/
    //     previewImage/
    //     1454355?print_width=4.5&print_height=4.5&preview_width_pixels=150&preview_height_pixels=150
    //     for id = 1454355, print_width=4.5 inches, print_height = 4.5 inches
    //     preview_width = 150px, preview_height = 150px
    //     var baseUrl= http://api.v1.spoonflower.com/design/
    //       STICK WITH PIXELS AND INCHES!
    //       previewWidth = 150; (px)
    //       previewHeight = 150; (px)
    //       var printWidth = 4.5; (in)
    //       var printHeight  = 4.5; (in)
    //     */
    //


//     getDesignByColor: function(color) {
//       var color = '4e81bd';
//       var url = baseUrl + 'search?color1=' + color;
//       return fetchUrl(url);
//     },
//
//
//     getDesignByKeyword: function(keyword) {
//       var url = baseUrl + 'search?q=' + keyword;
//       return fetchUrl(url);
//     }
//
//   }
//   return self;
// }



//////////////////////////////////////////////////////////////////////////////
//deprecated atm

// function getGroup(path) {
//   //empty palette, nothing happens!
//   if (!currFabric) return;
//   //use id for snappy shtuffz
//   var group = path.parent();
//   console.log(group);
//
//   group.selectAll('path').forEach(applyFabricPatch);
// }
