Feature: Verify Google Webpage has certain elements
    As a developer
    I want to be able to verify that certain elements are shown on a webpage

    @elements
    Scenario: Check different elements on Google's webpage
		Given I open the url "https://google.com"
		When I pause for 3000ms

		#Google logo
    	Then I expect that element "#hplogo" is visible

    	# Google search entry field
    	And I expect that element ".//*[@id='lst-ib']" is visible

    	# Google Sign in button (with text)
    	And I expect that button ".gb_5f" contains the text "Sign in"

    	# Google I'm Feeling Lucky button
    	And I expect that element ".//*[@id='gbqfbb']" is visible

    @credentials
    Scenario: Verify user cannot sign in with invalid credentials
    	Given I open the url "http://google.com"
    	And I pause for 3000ms

    	When I click on the link "Sign in"
    	And I pause for 5000ms

    	# Google Sign in email field
    	Then I expect that element ".//*[@id='identifierId']" is visible

    	# Email field
    	When I set "sah@fullscreen.qa" to the inputfield ".//*[@id='identifierId']"
    	
    	# Side note: not a good idea to have two Whens in this file (change later)

    	# Clicking on the Next button
    	And I click on the element "/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[2]/div[1]/div/content/span[1]"
    	And I pause for 5000ms

    	Then I expect that element ".vHVGub > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)" is visible
    	And I expect that element ".vHVGub > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)" contains the text "Couldn't find your Google Account"

    @search
    Scenario: Verify Google Search is functional
    	Given I open the url "http://google.com"
    	And I pause for 3000ms

    	# Trigger search using fullscreen keyword
    	When I set "fullscreen" to the inputfield ".//*[@id='lst-ib']"
    	And I pause for 3000ms

    	# This is to clear the auto search menu list that shows up and gets clicked by accident sometimes
    	And I click on the element "#hplogo"
    	
    	# Google Search button
    	And I click on the element ".//*[@name='btnK']"
    	And I pause for 5000ms

    	# Fullscreen search results are displayed

    	# Verify results page displays more than five results
    	# Pseudo code:
    	#	Need to write an js function that finds the total # of anchor/href tags on the results page
    	#	If this count is > 5
    	#	Set the expectation here in the feature file (e.g. Then I expect the results to be greater than 5)

    	# Verify that first search result has URL: fullscreenmedia.co
    	# Pseudo code:
    	#	This is a little tougher than it looks because of how Google displays their search results
    	#	The tags are filled with a lot of extra garbage
    	#	It's tough to find the first search result even using xpath or css
    	#	See:
    	#		#Then I expect that element "div.bkWMgd:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > h3:nth-child(1) > a:nth-child(1)" is visible
    	#	And:
    			#And I click on the element "/html/body/div[5]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div/div/div/div/h3/a"
    	#	Which both fail for some reason.
    	
    	# Verify that clicking first search result does redirect to Fullscreen Media website

    	# CONTINUED...

    	And I click on the link "Fullscreen | CREATE DIFFERENTLY"
    	Then I expect that the url is "http://fullscreenmedia.co/"

    	And I pause for 3000ms
    	
    	# Side note: Once the above solution for verifying more than 5 results are found is done, the command above will look something like:
    	# And I click on the element ".a[href][1]"
    	#
    	# Also, just a side note that the implementation below did not work:
    	#
    	# Then I expect that element "/html/body/div[5]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div/div/div/div/div/div/div/cite" contains the text "fullscreenmedia.co"