var chooseProject = function() {
    this.dollQuiltNavLink = element(by.css('body > main > div.project-view.view-container > div.project-list-container > ul > li:nth-child(5) > a'));
    this.backToToNavLink = element(by.css('body > main > div.project-view.view-container > div.project-cards > div > a'));
    this.dollQuiltStartLink = element(by.css('body > main > div.project-view.view-container > div.project-cards > a:nth-child(5)'));
};

module.exports = chooseProject;