describe('Happy Path to create a doll quilt with the stripe pattern', function(){
    var welcomePage = require('../pageObjects/welcome.page.js');
    var chooseProjectPage = require('../pageObjects/chooseProject.page.js');
    var chooseBlockPage = require('../pageObjects/chooseBlock.page.js');
    var designBlockPage = require('../pageObjects/designBlock.page.js');
    var previewProjectPage = require('../pageObjects/previewProject.page.js');
    var nextStepsPage = require('../pageObjects/nextSteps.page.js');
    var dollQuiltData = require('../helpers/data/dollQuiltData.js');
    var url = require('../helpers/url.js');

    beforeEach(function() {
        browser.ignoreSynchronization = true;
        browser.get('http://localhost:3000');
    });

    it('should reach the welcome page', function (){});
    it('should click the "Start a new quilt" button', function (){});

    it('should reach the project page', function(){});
    it('should click the doll quilt nav link to ensure it functions', function (){});
    it('should click the doll card to start the project', function (){});

    it('should reach the choose block page', function (){});
    it('should wait for the animation to finish', function (){});
    it('should click the "Stripes" block design option', function (){});

    it('should reach the "Design Block" page', function (){});
    it('should wait for the animation to finish', function (){});
    it('should have the "Add Fabric Message" present', function(){});
    it('should click the add fabrics button', function (){});
    it('should have the fabric modal pop up', function (){});
    it('should click and add the first three fabrics in the default popular list', function() {});
    it('should check and see that those three fabrics are in the fabric palette', function(){});
    it('should close the fabric modal', function(){});
    it('should hover over the bottom stripe of the quilt block and click it', function(){});
    it('should click the third fabric in the palette', function(){});
    it('should check that the third fabric is in the bottom stripe', function(){});
    it('should click the second stripe of the quilt to fill it with the third fabric in the palette', function(){});
    it('should check that the third fabric is in the second stripe of the quilt', function(){});
    it('should click the first stripe in the quilt block', function(){});
    it('should click the first fabric in the palette to fill the first stripe in the quilt', function(){});
    it('should check that the first fabric is in the first stripe of the quilt', function(){});
    it('should click the second fabric in the palette', function(){});
    it('should click the third stripe on the quilt to fill it with the second fabric', function(){});
    it('should check that the second fabric is in the third stripe', function(){});
    it('should click the "Preview Quilt" button', function(){});

    it('should reach the preview project page', function (){});
    it('should wait for the animation to finish', function (){});
    it('should toggle the view to see the entire quilt', function(){});
    it('should toggle the view back to see the block only', function(){});
    it('should name the quilt', function(){});
    it('should set the quilt for public use', function (){});
    it('should click the "Save Quilt" button', function(){});

    it('should reach the "Next Steps" page', function(){});
    it('should wait for the animation to finish', function (){});
    it('should check that the quilt name matches the name previously entered', function(){});
    it('should click the "View Fabric Measurements" toggle opens', function(){});
    it('should check that the quilt type is the one selected', function(){});
    //TODO: Add in a function to make this in the test data -Lydia
    it('should check that the number of fabrics matches the number of fabrics in the quilt', function(){});
    it('should close the "View Fabric Measurements" toggle', function(){});
});