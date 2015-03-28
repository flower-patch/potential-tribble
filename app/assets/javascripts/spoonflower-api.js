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


//     getDesignByColor: function(color) {
      // var color = '4e81bd';
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
