Feature: See user page

Background:
	Given I create a question
  Given I am on the homepage
	
Scenario: Show user page	
	And I am logged in
	And I visit my profile page
	Then I should see my profile
	And I should see questions I posted