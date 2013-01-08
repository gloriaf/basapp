Feature: Contact page 
    In order to find out Contac
    As an user
    I want to see a contact page
    
#    Background: topics and notes in database
#	Given the following topics exists:
#	| name     | topic_type | description |
#	| Cucumber | Tool       | BDD         |
#	| Rspec    | Tool       | TDD         |
#        And the following notes exists for "Cucumber"
	
    Scenario: Home page
	When I go to the contact page
#	Then show me the page
	Then I should see "Basic app | Contact" in the selector "h1"
	
    Scenario: Navigate to Contact page from Help page
	Given I am on the help page
        Then I should see "Contact" in a link
	When I follow "Contact"
	Then I should be on the contact page
	And I should see "Contact"

    Scenario: Navigate to Contact page from About page
	Given I am on the aboutUs page
        Then I should see "Contact" in a link
	When I follow "Contact"
	Then I should be on the contact page
	And I should see "Contact"

