Feature: Reply to questions

	Background:
		Given I create a question
		When I am on the homepage


		Scenario: A User can reply to questions
			And I am logged in
			Then I click on a question title
			And I reply to that question
			Then I should see my response
		






