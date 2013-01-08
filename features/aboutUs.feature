Feature: About Us page 
    In order to find out About Us
    As an user
    I want to see a aboutUs page
    
#    Background: topics and notes in database
#	Given the following topics exists:
#	| name     | topic_type | description |
#	| Cucumber | Tool       | BDD         |
#	| Rspec    | Tool       | TDD         |
#        And the following notes exists for "Cucumber"
	
    Scenario: About us page
	When I go to the aboutUs page
#	Then show me the page
	Then I should see "Basic app | AboutUs" in the selector "h1" 

    Scenario: Navigate to About page from Help page
	Given I am on the help page
        Then I should see "About" in a link
	When I follow "About"
	Then I should be on the aboutUs page
	And I should see "About"

    Scenario: Navigate to Contact page from Contact page
	Given I am on the aboutUs page
        Then I should see "About" in a link
	When I follow "About"
	Then I should be on the aboutUs page
	And I should see "About"
