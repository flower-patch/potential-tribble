//Api is an instance of the `self` object below
var Api = setupFakePi();

 //setupSpoonflowerApi is just setting up the `self` object below and returning it.\
function setupFakePi() {
  var baseUrl = 'https://fakepi.herokuapp.com/api/v1/design/';


  var self = {

    getPopularList: function(limit) {
      var limit = limit || '10';
      var freshtastic = '&sort=freshtastic';
      var url = baseUrl + 'search?limit=' + limit + freshtastic;
      return $.get(url);
    },

    getDesignByKeyword: function(keyword) {
      var url = baseUrl + 'search?q=' + keyword;
      return $.get(url);
    },

    getDesignByColor: function(color) {
      var color = '4e81bd';
      var url = baseUrl + 'search?color1=' + color;
      return $.get(url);
    },

  
    getDesignById: function(designId) {
      //preview in px, print in inches
      var previewWidth = 410;
      var previewHeight = 410;
      var printWidth = 9;
      var printHeight  = 9;
      var url = baseUrl + 'previewImage/' +
        designId + '?' + 'print_width=' +
        printWidth + '&print_height=' +
        printHeight + '&preview_width_pixels=' +
        previewWidth + '&preview_height_pixels=' +
        previewHeight;
      return $.get(url);
    }

  };

  return self;
}
