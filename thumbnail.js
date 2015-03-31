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


function getDocName (li) {
  thumbDocName= $.valHooks.textarea = {
    get: function( elem ) {
      return elem.value.replace( /\r?\n/g, "\r\n" );
    }
  };
  console.log(thumbDocName);
}
