require.config({
  baseUrl:'src/'
});

// Require libraries
require(['require', 'vendor/chai', 'vendor/mocha'], function(require,chai){
  // Setup Chai & Mocha
  should = chai.should();
  mocha.setup('bdd');
  // Require base tests before starting
  require(['spec/person'], function(person){
    // Start runner
    mocha.run();
  });
});
