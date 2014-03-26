Feature: Marking Answers

Background:
		Given I create a question
		When I am on the homepage

		Scenario: A User can mark answers as solved
			And I am logged in
			And I click on a question title
			And I reply to that question
			And I reply to that question again
			Then I should see my response with my fullname
			And I should be able to select the best answer
			And The best answer should appear on top

		Scenario: A User cannot mark other answers solved
			And I am not logged in
			And I click on a question title
			Then I should not be able to select the best answer