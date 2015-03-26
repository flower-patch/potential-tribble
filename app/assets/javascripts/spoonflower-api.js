// DELETE FOR PRODUCTION UNLESS CORS IS UP

/*

//Api is an instance of the `self` object below
var Api = setupSpoonflowerApi();

//setupSpoonflowerApi is just setting up the `self` object below and returning it.\
function setupSpoonflowerApi() {
var baseUrl = 'https://fakepi.herokuapp.com/api/v1/';

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

/*
API Call for default getList call
http://api.v1.spoonflower.com/design/search?limit=10&sort=freshtastic
var baseUrl= http://api.v1.spoonflower.com/design/
baseUrl + search?limit=10&sort=freshtastic
*/

/*
getPopularList: function(limit) {
var limit = '20';
var freshtastic = '&sort=freshtastic';
var url = baseUrl + 'search?limit=' + limit + freshtastic;
return fetchUrl(url);
},
*/

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
var printHeigh  = 4.5; (in)
*/

/*
designId is based on what user chooses
var designId = '1454355';

//dimensions are variables now in case we want to change them later
var previewWidth = 150;
var previewHeight = 150;

//probably change based on fabric design itself
var printWidth = 4.5;
var printHeight  = 4.5;
*/

/*
getDesignById: function (designId) {
var url = baseUrl + 'previewImage/' +
designId + '?' + 'print_width='+
printWidth + '&print_height=' +
printHeight + '&preview_width_pixels=' +
previewWidth + '&preview_height_pixels=' +
previewHeight;
return fetchUrl(url);
}*/


/*
API CALL
http://api.v1.spoonflower.com/design/search?color1=444444
in example, color = 444444
color is a hex value
444444 is testing API, not for real
parse color later
*/

/*
var color = '444444';
getDesignByColor: function(color) {
var url = baseUrl + 'search?color1=' + color;
return fetchUrl(url);
}*/



/*
http://api.v1.spoonflower.com/design/search?q=goats
10 results shown
var query = goat, eventually user search input
*/

/*
var query = goat;
getDesignByQuery:function(query) {
var url = baseUrl + 'search?q=' + query;
return fetchUrl(url);
}
};

return self;*/
