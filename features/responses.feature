Feature: Reply to questions

	Background:
		Given I create a question
		When I am on the homepage


		Scenario: A User can reply to questions
			And I am logged in
			Then I click on a question title
			And I see the google hangout buttons
			And I reply to that question
			Then I should see my response with my fullname

		Scenario: A User cannot submit an empty reply
			And I am logged in
			Then I click on a question title
			And I reply with no response
			Then I should see an error

		Scenario: A User cannot reply if not logged in
			And I am not logged in
			And I click on a question title
			Then I should not see the reply section
			And I cannot see google hangout buttons
		






