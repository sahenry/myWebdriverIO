Feature: Verify Google Homepage has certain elements
    As a developer
    I want to be able to verify that certain elements are shown on Google's homepage

    @elements
    Scenario: Check different elements on Google's webpage
	
    Given I open the url "https://google.com"
	
	#Google logo
        # Wait for 10s to see if this is visible
        Then I expect that element "#hplogo" becomes visible
    	
    	# Google search entry field
    	And I expect that element ".//*[@id='lst-ib']" is visible

    	# Google Sign in button (with text)
    	And I expect that button ".gb_5f" contains the text "Sign in"

    	# Google I'm Feeling Lucky button
    	And I expect that element ".//*[@id='gbqfbb']" is visible
