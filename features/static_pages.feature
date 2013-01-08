Feature: About Us page 
    In order to navigate in Basapp
    As an user
    I want to see Help, Contact, About Us and Home pages
    
    Background: Home page
	Given I am on the home page
        Then I should see "Welcome"
	
    Scenario: Navigate to Help page
	Given I should see "Help" in a link
	When I follow "Help"
	Then I should be on the help page
	And I should see "Help"
	
    Scenario: Navigate to Contact page
	Given I should see "Contact" in a link
	When I follow "Contact"
	Then I should be on the contact page
	And I should see "Contact"

    Scenario: Navigate to About Us page
	Given I should see "About" in a link
	When I follow "About"
	Then I should be on the aboutUs page
	And I should see "About"

