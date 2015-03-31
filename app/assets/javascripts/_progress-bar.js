$(function () {
  function disableProgressButtons() {
    var forwardButtons = $('.selected, .selected ~ .progress-element a');
    forwardButtons.on('click', function(e) {
      e.preventDefault();
    });
  }

  disableProgressButtons();

});
