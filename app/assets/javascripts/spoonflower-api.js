 var apiCall = function spoonflowerApi() {
  var baseUrl = 'http://localhost:3000/api/v1/';

  function fetchUrl(url) {
    var promise = $.Deferred();

      var req = $.getJSON(url).done(function (data) {
      if (!data.ok) {
        promise.reject(req, 'Unknown error', data);
      } else {
        promise.resolve(data);
      }
    });
    return promise;
  }

  var self = {

    designList: function () {
      var url = baseUrl + 'designs/list';
      return fetchUrl(url);
    },

    designById: function (designId) {
    var url = baseUrl + 'designs/get?design_id=' + designId;
    return fetchUrl(url);
    }
  };

  return self;
}
