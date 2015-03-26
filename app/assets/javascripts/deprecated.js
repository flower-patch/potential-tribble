//////////////////////////////////////////////////////////////////////////////
//DEPRECATED
// add a class to li of currFabric

  /*
  $('.palette .fabric-preview').each(function(item) {
      // it's returning undefined
      console.log(item);
      var listItem = $(item).html();
      console.log(listItem.fabric);
      if (listItem.data.id === currFabric.id) {
        listItem.addClass('current-fabric');
        return;
      } else {
        listItem.removeClass('current-fabric')
      }
  });
  */

//////////////////////////////////////////////////////////////////////////////
//DEPRECATED

/*
function addFabricMessage() {
  if (palette === undefined || palette.length === 0) {
  alt example from appointments app
   if (appts === undefined || appts.length === 0) {
      $('.no-frames').html(noFrames);
      $('.no-frames').fadeIn('slow');
   };
    $('.add-fabric-message').fadeIn('slow');
  }
}

addFabricMessage();
*/

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
