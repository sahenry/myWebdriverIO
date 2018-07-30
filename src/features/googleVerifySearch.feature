Feature: Verify Google Search is functional
    As a developer
    I want to be able to verify that Google's search is functional

    @search
    Scenario: Verify Google Search is functional
    	Given I open the url "http://google.com"
        
        # Wait for 10s to see if the logo is visible
        Then I expect that element "#hplogo" becomes visible

    	# Trigger search using fullscreen keyword
    	When I set "fullscreen" to the inputfield ".//*[@id='lst-ib']"

    	# This is to clear the auto search menu list that shows up and gets clicked by accident sometimes
    	And I click on the element "#hplogo"
    	
    	# Google Search button
    	And I click on the element ".//*[@name='btnK']"

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

    	# Side note: Once the above solution for verifying more than 5 results are found is done, the command above will look something like:
    	# And I click on the element ".a[href][1]"
    	#
    	# Also, just a side note that the implementation below did not work:
    	#
    	# Then I expect that element "/html/body/div[5]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div/div/div/div/div/div/div/cite" contains the text "fullscreenmedia.co"

