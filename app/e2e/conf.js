exports.config = {
  /* Selenium Settings */
  seleniumAddress: 'localhost:3000',
  directConnect: true,
  specs: ['specs/dollQuilt.spec.js'],

  /* Global Test Information */
  allScriptsTimeout: 11000,
  getPageTimeout: 10000,
  params: {}

};