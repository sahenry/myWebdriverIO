Feature: Verify Google mail sign on credentials
    As a developer
    I want to be able to verify Google's gmail sign on credentials

    @credentials
    Scenario: Verify user cannot sign in with invalid credentials
    	Given I open the url "http://google.com"
    	
        # Wait for 10s to see if the logo is visible
        Then I expect that element "#hplogo" becomes visible

    	# Google Sign in email field
        When I click on the link "Sign in"
    	Then I expect that element ".//*[@id='identifierId']" is visible

    	# Email field
    	When I set "sah@fullscreen.qa" to the inputfield ".//*[@id='identifierId']"
    	
    	# Side note: not a good idea to have two Whens in this file (change later)

    	# Clicking on the Next button
    	# And I click on the element "/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[2]/div[1]/div/content/span[1]"

        And I click on the element ".//*[@id='identifierNext']/content/span"

    	# Previous element xpath locator was: ".vHVGub > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)" (changed it 7.30.18)
    	Then I expect that element ".//*[@id='view_container']/div/div/div[2]/div/div[1]/div/form/content/div[1]/div/div[2]/div[2]/div" becomes visible

        And I expect that element ".//*[@id='view_container']/div/div/div[2]/div/div[1]/div/form/content/div[1]/div/div[2]/div[2]/div" contains the text "Couldn't find your Google Account"
