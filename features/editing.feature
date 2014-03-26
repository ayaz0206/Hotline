Feature: A questioner can edit questions
	
	Background: 
		Given I create a question
		And I am logged in
	
	Scenario: A User can edit a question 
		When I click on a question
		And I click on the edit link  
		Then I edit the title content
		And I edit the description content
		And I click the Save button

	Scenario: A User cannot edit others question
		And I am not logged in
		And I click on a question
		Then I should not see edit link 