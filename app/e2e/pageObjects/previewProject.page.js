var previewProject = function() {
    this.quiltNameInput = element(by.id('quilt_name'));
    this.makePublicToggle = element(by.css('#edit_quilt_10 > div > div.share-quilt-container.preview-label > label.label-switch > div'));
    this.fullPreviewToggle = element(by.id('svg2'));
    this.blockPreviewToggle = element(by.id('rect4150'));
    this.saveQuiltButton = element(by.css('#edit_quilt_10 > div > div.awesome-submit-container > input'));
};

module.exports = previewProject;
