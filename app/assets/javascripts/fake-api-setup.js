//Api is an instance of the `self` object below
var Api = setupFakeApi();

 //setupSpoonflowerApi is just setting up the `self` object below and returning it.\

function setupFakeApi() {
  var baseUrl = 'https://fakepi.herokuapp.com/api/v1/';

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
    getDesignList: function () {
      return self.getDesignSearch('');
    },

    getDesignSearch: function(query) {
      var url = baseUrl + 'design/search?q=' + query;
      return fetchUrl(url);
    },

    getDesignById: function (designId) {
    var url = baseUrl + 'designs/get?design_id=' + designId;
    return fetchUrl(url);
    }
  };

  return self;
}
