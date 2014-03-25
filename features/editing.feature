Feature: A questioner can edit questions
	
	Scenario: A User can edit a question 
		Given I create a question
		And I am logged in
		When I click on a question
		And I click on the edit link  
		And I am on the edit page
		Then I edit the title content
		And I edit the description content
		And I click the Save button