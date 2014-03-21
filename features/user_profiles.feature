Feature: See user page

Background:
		Given I am on the homepage
    Given I create a question
		And I am logged in

	Scenario: Show user page
		
		And I visit my profile page
		Then I should see my profile
		And I should see questions I posted