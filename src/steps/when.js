// When in Rome...

const pause =           require('../support/action/pause.js');
const clickElement =    require('../support/action/clickElement.js');
const setPromptText =   require('../support/action/setPromptText.js');
const setInputField =   require('../support/action/setInputField.js');

const { When } = require('cucumber');


When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I enter "([^"]*)?" into the prompt$/,
    setPromptText
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);