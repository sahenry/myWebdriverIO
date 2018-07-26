// And Thhhhhhhhhen... NO AND THEN!

const checkIfElementExists =    require('../support/lib/checkIfElementExists.js');
const checkContainsText =       require('../support/check/checkContainsText.js');
const isVisible =               require('../support/check/isVisible.js');
const checkURL =                require('../support/check/checkURL.js');
const checkClass =              require('../support/check/checkClass.js');

const { Then } = require('cucumber');


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

Then(
    /^I expect that the url is( not)* "([^"]*)?"$/,
    checkURL
);

Then(
    /^I expect that element "([^"]*)?" (has|does not have) the class "([^"]*)?"$/,
    checkClass
);