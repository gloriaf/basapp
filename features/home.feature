Feature: About Us page 
    In order to find out Home
    As an user
    I want to see a home page
    
    Scenario: Home page
	When I go to the home page
	Then I should see "Welcome"
	
    Scenario: Title Home page
	When I go to the home page
#	Then show me the page
	Then I should see "Basic app | Home" in the selector "h1" 

    Scenario: Navigate to Home page from Contact page
	Given I am on the contact page
        Then I should see "Home" in a link
#	Then show me the page
	When I follow "Home"
	Then I should be on the home page
	And I should see "Welcome"

    Scenario: Navigate to Home page from About page
	Given I am on the aboutUs page
        Then I should see "Home" in a link
	When I follow "Home"
	Then I should be on the home page
	And I should see "Welcome"

    Scenario: Navigate to Home page from Help page
	Given I am on the help page
        Then I should see "Home" in a link
	When I follow "Home"
	Then I should be on the home page
	And I should see "Welcome"
