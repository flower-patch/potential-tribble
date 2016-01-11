exports.config = {
    /* Selenium Settings */
    seleniumAddress: 'http://localhost:4444/wd/hub',
    directConnect: true,
    specs: ['specs/dollQuilt.spec.js'],

    /* Global Test Information */
    allScriptsTimeout: 11000,
    getPageTimeout: 10000,
    params: {},
    baseUrl: 'http://localhost:3000/',

    /* Jasmine Information */
    framework: 'jasmine',

    jasmineNodeOpts: {
        defaultTimeoutInterval: 30000
    }


};