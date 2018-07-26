// That's a Given...

const openWebsite = require('../support/action/openWebsite.js');

const { Given } =   require('cucumber');

Given(
    /^I open the (url|site) "([^"]*)?"$/,
    openWebsite
);