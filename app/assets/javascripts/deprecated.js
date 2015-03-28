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
addFabricMessage();


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

//
