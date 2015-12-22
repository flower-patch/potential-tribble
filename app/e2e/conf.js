exports.config = {
  /* Selenium Settings */
  seleniumAddress: 'http://localhost:4444/wd/hub',
  directConnect: false,
  
  /* List of Tests */
  specs: [],
  suites: {};

  /* Global Test Information */
  baseUrl: 'http://flowerpatch.spoonflower.com',
  allScriptsTimeout: 11000,
  getPageTimeout: 10000,
  params: {},

  /* Jasmine Test Framework */
  framework: 'jasmine',
  jasmineNodeOpts: {
    showColors: true,
    defaultTimeoutInterval: 30000,
    print: function() {},
    grep: 'pattern',
    invertGrep: false
  },

};