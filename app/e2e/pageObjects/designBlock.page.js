var designBlock = function() {

    this.addFabricButton = element(by.css('body > main > div.edit-view.view-container > div.choose-palette > button > i'));
    this.addFabricMessage = element(by.css('body > main > div.edit-view.view-container > div.choose-palette > div'));
    this.bottomStripe = element(by.id('path4561'));
    this.thirdStripe = element(by.id('path4557'));
    this.secondStripe = element(by.id('path4553'));
    this.firstStripe = element(by.id('path4551'));
    this.fabricModal = element(by.css('body > main > div.fabric-modal.show > div'));
    //TODO: Add in elements for the details in the fabric modal
    this.modalCloseButton = element(by.css('body > main > div.fabric-modal.show > div > div > button > i'));
    this.previewQuiltButton = element(by.css('#new_quilt > div:nth-child(6) > input'));
};

module.exports = designBlock;