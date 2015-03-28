  //Api is an instance of the `self` object below
  var Api = setupFakePi();

   //setupSpoonflowerApi is just setting up the `self` object below and returning it.\
  function setupFakePi() {
    var baseUrl = 'https://fakepi.herokuapp.com/api/v1/design/';

    // function fetchUrl(url) {
    //   var promise = $.Deferred();
    //    // this has to change for JSONP
    //    var req = $.ajax({
    //      //url property with this value
    //      url: url,
    //      dataType: "jsonp",
    //      timeout: 5000, // fake .fail() a lot of time for the request to be successfully completed
    //      success: function(data) {
    //        promise.resolve(data);
    //      },
    //      error: function(data) {
    //        promise.reject(req, 'Unknown error', data);
    //      }
    //    });
    //    return promise;
    //  }
    //
    //
    //   var promise = $.Deferred();
    //
    //     var req = $.getJSON(url).done(function (data) {
    //     if (!data.ok) {
    //       promise.reject(req, 'Unknown error', data);
    //     } else {
    //       promise.resolve(data);
    //     }
    //   });
    //   return promise;
    // }

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
        var url = baseUrl + 'search?color1=' + color;
        return $.get(url);
      }

    };

    return self;
  }
