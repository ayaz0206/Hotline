Feature: Post Questions

	Scenario: A User can post questions
		Given I am on the homepage
		And I click on "Ask A Dev"
		Then I can create a question
		And I can see the full question detail