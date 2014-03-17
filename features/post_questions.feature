Feature: Post Questions

	Background: 
		Given I am on the homepage 
		And I click on "Ask A Dev"


  	Scenario: A User can post questions
  		Then I can create a question 
  		And I can see the full question detail
  		And I see the message "Successfully Posted!"


  	Scenario: A User submits a question without title
  		And I only fill in the decription
      And I click "Ask" 
      Then I should see an error message


