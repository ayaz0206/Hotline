Feature: See user page

	Scenario: Show user page
		Given I am on the homepage
		And I am logged in
		And I visit my profile page
		Then I should see my profile
		And I should see questions I posted