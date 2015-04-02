var Api = setupSpoonflowerApi();

function setupSpoonflowerApi() {
  var baseUrl = 'http://api.v1.spoonflower.com/design/';

  function fetchUrl(url) {
    var promise = $.Deferred();
    // this has to change for JSONP
    var req = $.ajax({
      //url property with this value
      url: url,
      dataType: "jsonp",
      timeout: 5000, // fake .fail() a lot of time for the request to be successfully completed
      success: function(data) {
        promise.resolve(data);
      },
      error: function(data) {
        promise.reject(req, 'Unknown error', data);
      }
    });
    return promise;
  }

  var self = {

    getPopularList: function(limit) {
      var limit = '12';
      var freshtastic = '&sort=freshtastic';
      var url = baseUrl + 'search?limit=' + limit + freshtastic;
      return fetchUrl(url);
      console.log(url);
    },

    getDesignById: function(designId) {
      var url = baseUrl + 'previewImage/' +
        designId + '?' + 'print_width=' +
        printWidth + '&print_height=' +
        printHeight + '&preview_width_pixels=' +
        previewWidth + '&preview_height_pixels=' +
        previewHeight;
      return fetchUrl(url);
    },

    getDesignByColor: function(color) {
      var url = baseUrl + 'search?color1=' + color;
      return fetchUrl(url);
    },


    getDesignByKeyword: function(keyword) {
      var url = baseUrl + 'search?q=' + keyword;
      return fetchUrl(url);
    },

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

  }
  return self;
}
