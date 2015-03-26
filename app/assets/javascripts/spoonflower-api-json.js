
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
