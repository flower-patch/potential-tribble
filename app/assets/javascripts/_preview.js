$(document).ready(function(){
  var currentId;
  var thumbId;


  function comparePrevToThumb(currentId, thumbId, e) {
    debugger;
    if (current !== thumbId) {
      replaceCurrentImage(current, thumb);
    }
  }

  function replaceCurrentImage(big, small) {
    $(current).detach();
    console.log(currentId);
    $('.preview-svg').append(thumb);
    console.log('thumb =' + thumb);
    current =$('.preview-svg').find('svg');
    console.log('current =' + thumb);
    //then i have to do some $parent stuff to move the current into the thumbnail.
  }

  $('.preview-thumbnail').click(function() {
    console.log('click thumbnail');
    //these may need to be sodipodi:docname or id

    current = $('.preview-svg').find('svg');
    currentId = current.attr('sodipodi:docname');
    console.log('currentId=' + currentId);
    thumb = $(this).find('svg');
    thumbId = thumb.attr('sodipodi:docname');
    console.log('thumbId=' + thumbId);
    comparePrevToThumb(currentId, thumbId);


    //animation stuff i don't like
    // var img_attr = $(this).find('svg').attr("id"),
    //     image_id = img_attr.replace('thumb_', '');
    //
    // $('.image_' + image_id + '').stop(true,true).fadeIn(300);
    // return false;

  });

});
