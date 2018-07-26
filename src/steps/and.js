// And now what?

// May need to do some refactoring here.

const checkIfElementExists =    require('../support/lib/checkIfElementExists.js');
const checkContainsText =       require('../support/check/checkContainsText.js');
const isVisible =               require('../support/check/isVisible.js');

const { And } = require('cucumber');

Then(
    /^I expect that element "([^"]*)?" does( not)* appear exactly "([^"]*)?" times$/,
    checkIfElementExists
);

Then(
    /^I expect that element "([^"]*)?" is( not)* visible$/,
    isVisible
);

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    checkContainsText
);