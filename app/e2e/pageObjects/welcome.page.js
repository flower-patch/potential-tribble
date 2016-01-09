var welcomePage = function() {
  this.startQuiltButton = element(by.css('body > main > div > div.hero > div > a > div'));
  this.spoonflowerLink = element(by.css('body > footer > div.spoonflower-section > a > img'));
  this.flowerPatchRepoLink = element(by.css('body > footer > div.legal-section > a'));
};

module.exports = welcomePage;
