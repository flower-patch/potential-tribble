$(function () {
console.log('running progress-bar.js')
  function disableProgressButtons() {
    var forwardButtons = $('.selected, .selected ~ .progress-element a');
    console.log('forwardButtons =',forwardButtons)
    forwardButtons.on('click', function(e) {
      e.preventDefault();
    });
  }

  disableProgressButtons();

});
