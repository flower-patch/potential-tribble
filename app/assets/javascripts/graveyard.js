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


/////////////////////////////////////////////////////////////////////////////
//Practice code for preview rendering

  // var previewBlockSvg = Snap('.preview-block svg');
  // var previewProjectSvg = Snap('.preview-project svg');
  //
  // var previewBlock = $('.preview-blow svg').html();
  // var previewProject = ($'.preview-project svg').html();
  // // var fillBlock = previewBlock.innerSVG();
  //
  // //
  // // function cleanUpPreview() {
  // //
  // //   preview.selectAll('path').forEach(function(path) {
  // //     path.attr({stroke: 'none'});
  // //   });
  // // }
  //
  // // cleanUpPreview(previewBlock);
  //
  // // cleanUpPreview(previewProject);
  //
  // function drawPreview() {
  //
  //   var previewBlockContents = [previewBlock];
  //   console.log(previewBlockContents);
  //   var previewBlockBlob = new Blob(previewBlockContents, {type : 'text/html'}); // the blob
  //   console.log(previewBlockBlob);
  //   var svgUrl = window.URL.createObjectUrl(previewBlockBlob);
  //   console.log(svgUrl);
  //
  //   var pattern = previewProject.image(svgUrl, 0, 0, 90, 90)
  //   // var pattern = previewProject.image('http://www.mccallsquilting.com/images/wysiwyg_img/Celtic-Twist-300px_27999.jpg', 0, 0, 90, 90)
  //     .toPattern(0, 0, 90, 90)
  //     .attr({ id: 'patternId', y: '60'});
  //
  //   previewProject.selectAll('path').forEach(function(path) {
  //     // fillBlock.appendTo(path);
  //     console.log('help');
  //     path.attr({fill: pattern, stroke: 'none'});
  //   });
  // }
  //
  // drawPreview();


  // function drawPreview() {
  //   var previewUrl = $('.preview-img-url').html();
  //
  //   var pattern = previewProjectSvg.image(previewUrl, 0, 0, 90, 90)
  //   .toPattern(0, 0, 90, 90)
  //   .attr({
  //     id: 'patternId',
  //     y: '60'
  //   });
  //
  //   cleanUpPreview(previewProjectSvg);
  //   previewProjectSvg.selectAll('path').forEach(function(path) {
  //     console.log('help');
  //     path.attr({
  //       fill: pattern,
  //       stroke: 'none'
  //     });
  //   });
  // }


//
//   var previewBlockSvg = Snap('.preview-block svg');
//   var previewBlockThumb = Snap('.preview-thumbnail svg');
//   var finalBlock = Snap('.final-block svg');
//   var modalBlock = Snap('.current-block .svg-editor svg');
//   var previewProjectSvg = Snap('.preview-project svg');
//   var previewBlock = $('.preview-block').html();
//   var previewProject = $('.preview-project').html();
//
//
//   var svgString = new XMLSerializer().serializeToString(document.querySelector('.preview-block svg'));
//   var canvas = document.getElementById("canvas");
//   var ctx = canvas.getContext("2d");
//   var DOMURL = self.URL || self.webkitURL || self;
//   var img = new Image();
//   var svg = new Blob([svgString], {type: "image/svg+xml;charset=utf-8"});
//   var url = window.URL.createObjectURL(svg);
//
//   $('body').append('<img src="' + url + '"');
//   console.log(url);
//
//   ctx.fillStyle = 'red';
//   ctx.fillRect(0, 0, 100, 100);
//
//   img.onload = function() {
//       ctx.drawImage(img, 0, 0);
//       var png = canvas.toDataURL("image/png");
//       console.log(png);
//       // document.querySelector('#png-container').innerHTML = '<img src="'+png+'"/>';
//       $('body').append('<img src="'+png+'"/>');
//       DOMURL.revokeObjectURL(png);
//       console.log('gotcha');
//   };
//
//   img.src = url;
//   console.log(url)
//   // imgUrl = '<img src="data:image/png;base64,<%= full_res_image  %>">'
//   var pattern = previewProjectSvg.image(url, 0, 0, 90, 90)
//   // var pattern = previewProject.image('http://www.mccallsquilting.com/images/wysiwyg_img/Celtic-Twist-300px_27999.jpg', 0, 0, 90, 90)
//     .toPattern(0, 0, 90, 90)
//     .attr({ id: 'patternId', y: '60'});
//     console.log('i made an image')
//
//
//   cleanUpPreview(previewProjectSvg);
//   console.log(previewProjectSvg);
//   console.log('joyridazzz');
//   previewProjectSvg.selectAll('path').forEach(function(path) {
//     // fillBlock.appendTo(path);
//     console.log('i am in');
//     path.attr({fill: pattern, stroke: 'none'});
//   });
// }
//
// drawPreviewPng();

//<!-- <%= ProjectTemplate.getXML_for_filename( @project.project_layout_svg ).html_safe %> -->


////////////////////////////////////////////////////////////////////////////////
//STACK OVERFLOW SVG TO CANVAS TO URL (my adaptation below)
// var btn = document.querySelector('button');
// var svg = document.querySelector('svg');
// var canvas = document.querySelector('canvas');
//
// function triggerDownload (imgURI) {
//   var evt = new MouseEvent('click', {
//     view: window,
//     bubbles: false,
//     cancelable: true
//   });
//
//   var a = document.createElement('a');
//   a.setAttribute('download', 'MY_COOL_IMAGE.png');
//   a.setAttribute('href', imgURI);
//   a.setAttribute('target', '_blank');
//
//   a.dispatchEvent(evt);
// }
//
// btn.addEventListener('click', function () {
//   var canvas = document.getElementById('canvas');
//   var ctx = canvas.getContext('2d');
//   var data = (new XMLSerializer()).serializeToString(svg);
//   var DOMURL = window.URL || window.webkitURL || window;
//
//   var img = new Image();
//   var svgBlob = new Blob([data], {type: 'image/svg+xml;charset=utf-8'});
//   var url = DOMURL.createObjectURL(svgBlob);
//
//   img.onload = function () {
//     ctx.drawImage(img, 0, 0);
//     DOMURL.revokeObjectURL(url);
//
//     var imgURI = canvas
//         .toDataURL('image/png')
//         .replace('image/png', 'image/octet-stream');
//
//     triggerDownload(imgURI);
//   };
//
//   img.src = url;
// });

  //from the stack overflow method above
  //another way of getting the objectURL
  // function drawPreview() {
  //   var DOMURL = window.URL || window.webkitURL || window;
  //   var canvas = document.querySelector('canvas');
  //   var ctx = canvas.getContext('2d');
  //   // var data = (new XMLSerializer()).serializeToString(svgNode);
  //   var img = new Image();
  //   var svgBlob = new Blob([previewBlock], {type: 'image/svg+xml;charset=utf-8'});
  //   // var svgNode = document.createElement(previewBlock);
  //
  //   // var svgBlock = document.querySelector('.preview-block svg');
  //   // console.log(svgtest)
  //   // var previewBlockContents = [previewBlock];
  //   // // console.log(previewBlockContents);
  //   // var previewBlockBlob = new Blob(previewBlockContents, {type: "image/svg+xml"}); // the blob
  //   // console.log(previewBlockBlob);
  //   var svgUrl = DOMURL.createObjectURL(svgBlob);
  //   console.log(svgUrl);
  //
  //   img.onload = function () {
  //     ctx.drawImage(img, 0, 0);
  //     DOMURL.revokeObjectURL(svgUrl);
  //
  //     var imgURI = canvas
  //       .toDataURL('image/png')
  //       .replace('image/png', 'image/octet-stream');
  //   }
  //
  //   img.src = svgUrl;
  //   $('.test-img').attr({src: svgUrl});
  //
  //   var pattern = previewProjectSvg.image(svgUrl, 0, 0, 90, 90)
  //   // var pattern = previewProject.image('http://www.mccallsquilting.com/images/wysiwyg_img/Celtic-Twist-300px_27999.jpg', 0, 0, 90, 90)
  //     .toPattern(0, 0, 90, 90)
  //     .attr({ id: 'patternId', y: '60'});
  //
  //   previewProjectSvg.selectAll('path').forEach(function(path) {
  //     // fillBlock.appendTo(path);
  //     console.log('help');
  //     path.attr({fill: pattern, stroke: 'none'});
  //   });
  // }
  //
  // drawPreview();

  // alt approach with CREATEOBJECTURL, was working excecpt not pulling fills
  //   function drawPreview() {
  //     var previewUrl = $('.preview-img-url').html();
  //     var previewBlockContents = [previewBlock];
  //     var previewBlockBlob = new Blob(previewBlockContents, {type: "image/svg+xml"}); // the blob
  //     var svgUrl = window.URL.createObjectURL(previewBlockBlob);
  //
  //
  //     var pattern = previewProjectSvg.image(svgUrl, 0, 0, 90, 90)
  //     var pattern = previewProjectSvg.image(previewUrl, 0, 0, 90, 90)
  //       .toPattern(0, 0, 90, 90)
  //       .attr({ id: 'patternId', y: '60'});
  //
  //     previewProjectSvg.selectAll('path').forEach(function(path) {
  //       console.log('help');
  //       path.attr({fill: pattern, stroke: 'none'});
  //     });
  //   }
  // }
// $(function(){
//
//   $('#gallery-demo').simplegallery({
//     galltime : 400, // transition delay
//     gallcontent: '.preview-svg',
//     gallthumbnail: '.preview-thumbnails',
//     gallthumb: '.preview-thumbnail'
//   })
//
// });



// $(document).ready(function() {
//   var currentId;
//   var thumbId;
//   var replaceCurrent;
//   var replaceThumb;
//
//
//   function comparePrevToThumb(currentId, thumbId, e) {
//     debugger;
//     if (current !== thumbId) {
//       replaceCurrentImage(current, thumb);
//     }
//   }
//
//   function replaceCurrentImage(big, small) {
//     console.log(currentId);
//     $(thumb).replaceWith(replaceCurrent);
//     $(current).replaceWith(replaceThumb);
//     console.log('thumb =' + thumb);
//
//     console.log(current);
//     //then i have to do some $parent stuff to move the current into the thumbnail.
//     //maybe unbind and reset click handlers?
//   }
//
//   $('.preview-thumbnail').click(function() {
//     console.log('click thumbnail');
//     //these may need to be sodipodi:docname or id
//
//     current = $('.preview-svg').find('.current-preview.svg');
//     replaceCurrent = current;
//     console.log('replace =' + currentId);
//     currentId = current.attr('sodipodi:docname');
//     console.log('currentId=' + currentId);
//     thumb = $(this).find('svg');
//     replaceThumb = thumb;
//     thumbId = thumb.attr('sodipodi:docname');
//     console.log('thumbId=' + thumbId);
//     comparePrevToThumb(currentId, thumbId);
//
//
//
//
//   });
//
// });



// $(function () {
//   //////////////////////////////////////////////////////////////////////////////
//   /*
//   CALL API HERE on modal-open
//   separate names for Spoonflower's API and fAkePI
//   */
//   function showPopularResults() {
//     Api.getPopularList().done(function(response) {
//       var results = response.results[0].results;
//       var resultElements = apiResultToElements(results);
//
//       $('.fabric-modal-list').empty().append(resultElements);
//     })
//   }
//
//   $('.popular-search-form').submit(function(e) {
//     e.preventDefault();
//     showPopularResults();
//   });
//
//   $('.open-fabric-modal-btn').on('click', function() {
//     console.log('open fabric clicked');
//     showPopularResults();
//
//     previewQuilt();
//     drawPalette('.current-palette', palette);
//     setTimeout(function() {
//       $('.fabric-modal').addClass('show');
//     }, 10);
//   });
//
//   $('.fabric-modal-box').on('click', function(e) {
//     e.stopPropagation();
//   });
//
//   $('.close-fabric-modal-btn, .fabric-modal').on('click', function() {
//     $('.fabric-modal').toggleClass('show');
//     console.log('close modal');
//     // Once the modal closes, move the svg-editor element back into its original
//     // area (.svg-editor-parent), in the main content.
//     currSvg = $('.fabric-modal .current-block').children();
//     $('.svg-editor-parent').append(currSvg);
//     addFabricMessage();
//     initializePalette();
//   });
//
//   //////////////////////////////////////////////////////////////////////////////
//   // COLOR PICKER
//
//   $('#picker').colpick({
//     // flat: true,
//     layout: 'hex',
//     submit: 0,
//     colorScheme: 'light',
//     onChange: function(hsb, hex, rgb, el, bySetColor) {
//       $(el).css('border-color', '#' + hex);
//       // Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
//       if (!bySetColor) $(el).val(hex);
//     }
//   }).keyup(function() {
//     $(this).colpickSetColor(this.value);
//   });
//
//   //////////////////////////////////////////////////////////////////////////////
//   //GET BY COLOR API CALL
//
//   $('.color-search').submit(function(e) {
//     e.preventDefault();
//     Api.getDesignByColor($('input', this).val()).done(function(response) {
//       var results = response.results[0].results;
//       var resultElements = apiResultToElements(results);
//
//       $('.fabric-modal-list').empty().append(resultElements);
//     })
//     //   $('.fabric-modal').toggleClass('show');
//     //   previewQuilt();
//     //   drawPalette('.current-palette', palette);
//   });
//
//   $('.fabric-modal-box').on('click', function(e) {
//     e.stopPropagation();
//     console.log('click fabric modal box');
//   });
//
//   //////////////////////////////////////////////////////////////////////////////
//   //GET BY KEYWORD API CALL
//
//   $('.keyword-search').submit(function(e) {
//     e.preventDefault();
//     Api.getDesignByKeyword($('input', this).val()).done(function(response) {
//       var results = response.results[0].results;
//       var resultElements = apiResultToElements(results);
//
//       $('.fabric-modal-list').empty().append(resultElements);
//     })
//     // $('.fabric-modal').toggleClass('show');
//     // previewQuilt();
//     // drawPalette('.current-palette', palette);
//   });
//
//   $('.fabric-modal-box').on('click', function(e) {
//     e.stopPropagation();
//   });
//
//   ////////////////////////////////////////////////////////////////////////////////
//   //CHECK FOR DUPLICATES
//
// function checkDuplicateSwatches (designItem) {
//   var newSwatchId = designItem.id;
//   console.log(newSwatchId);
//   var position = palette.indexOf(designItem);
//   console.log(position);
//   console.log(newSwatchId);
//   console.log(palette.valueOf());
//   for(var object in palette) {
//      var oldSwatch = palette[object];
//      var oldSwatchId = oldSwatch.id;
//      try {
//        if(oldSwatchId !== newSwatchId) {
//          drawPalette('.current-palette, .palette', palette);
//        } else {
//          throw new Error('oldSwatchId === newSwatchId');
//          setTimeout(function() {
//          $('.current-palette.fabric-preview-card').last().remove();
//        }, 10);
//        }
//      } catch (e) {
//        console.log(e.name + '' + e.message);
//        return alert('Do not add the same fabric design more than once to your palette.');
//      }
//    }
//  }
//
//    ////////////////////////////////////////////////////////////////////////////////
//    //Translate API calls to html
//
//   function apiResultToElements(results) {
//     return results.map(function(designItem) {
//       var img = $('<img>');
//       img.attr('data-id', designItem.id);
//       img.attr('src', designItem.thumbnail_url);
//
//       var imgCont = $('<div class="fabric-img-container"></div>');
//       imgCont.append(img);
//
//       var btn = $('<button alt="Add to palette" class="remove-fabric-btn icon-button"><i class="fa fa-plus-circle inner-button-icon"></i></button>')
//
//       var designName = $('<div class="fabric-name-container"><h3 class="fabric-name">' + designItem.name + '</h3></div>');
//
//       // this keeps coming in as undefined. Is it because of the underscore? Some privacy setting on api
//       // var designer = $('<span class="designer-screen-name">' + designItem.sceen_name + '</span>');
//
//       var li = $('<li></li>');
//       li.data('item', designItem);
//       li.addClass('fabric-preview card search-result');
//       li.append(imgCont);
//       li.append(btn);
//       li.append(designName);
//       // li.append(designer);
//
//       //Add swatches from modal to palette
//       li.on('click', function() {
//         palette.push({
//           id: $(this).find('img').attr('data-id'),
//           thumbnail_url: $(this).find('img').attr('src'),
//           // size: {
//           //   width: 50,
//           //   height: 50
//           // }
//         })
//         drawPalette('.current-palette, .palette', palette)
//       })
//
//       return li;
//     });
//   }
//
//
//
//   $('.open-fabric-modal-btn').on('click', function() {
//     Api.getPopularList().done(function(response) {
//       var results = response.results[0].results;
//       var resultElements = apiResultToElements(results);
//       $('.fabric-modal-list').empty().append(resultElements);
//     })
//     $('.fabric-modal').toggleClass('show');
//     previewQuilt();
//     drawPalette('.current-palette', palette);
//   });
//
// });
//
// NOT QUITE WORKING
// WHEN you remove a swatch, it goes back to your palette,
// it just needs to get the name
// var paletteLi = addPaletteToPreview({
//   id: fabricId,
//   thumbnail_url: fabricSrc
// });
// $('.fabric-modal-list').prepend(paletteLi);
//
// });





// Api.getPopularList(5).then(function(response) {
//   // The default palette is the first five results from the popular list
//   palette = response.results[0].results;
//   // palette.forEach(function(tile) {
//   //   tile.size = {
//   //     width: 50,
//   //     height: 50
//   //   };
//   // })
//   drawPalette('.palette', palette);
//   return palette;
// });
