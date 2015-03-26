//////////////////////////////////////////////////////////////////////////////
//JQ for the progress bar

$(function disableProgressButtons() {
  $(document).ready(function() {
    $('.selected.progress-element a, .selected ~ .progress-element a').attr('disable', 'disabled');
  });
});

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
