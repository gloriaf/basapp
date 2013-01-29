Feature: Help page 
    In order to find out Home
    As an user
    I want to see a help page
    
    Scenario: Help page
	When I go to the help page
#	Then show me the page
	Then I should see "Basic app | Help" in the selector "h1" 

    Scenario: Navigate to Help page from Contact page
	Given I am on the contact page
        Then I should see "Help" in a link
	When I follow "Help"
	Then I should be on the help page
	And I should see "Help"

    Scenario: Navigate to Help page from About page
	Given I am on the aboutUs page
        Then I should see "Help" in a link
	When I follow "Help"
	Then I should be on the help page
	And I should see "Help"

