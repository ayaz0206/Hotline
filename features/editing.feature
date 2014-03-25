Feature: A questioner can edit questions
	
	Background:
		Given I am logged in
		And I create a question

	Scenario: A User can edit a question 
		And I click on a question
		When I click on edit link  
		Then I will be directed to the edit page

		Given I am on the edit page
		When I edit the title content
		Then I edit the description content
		And I click the edit button