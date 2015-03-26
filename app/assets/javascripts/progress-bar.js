//JQ Progress Bar

$(function disableProgressButtons() {
  $(document).ready(function() {
    $('.selected.progress-element a, .selected ~ .progress-element a').attr('disable', 'disabled');
  });
});