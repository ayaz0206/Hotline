Feature: Post Questions

	Background: 
		Given I am on the homepage 

  	Scenario: A User can post questions
      And I am logged in
      And I click on "Ask Question"
      Then I can see google hangout on air button
  		And I can create a question 
  		And I can see the complete question detail with my fullname
  		And I see the message "Successfully Posted!"
      And I see the google hangout buttons


    Scenario: A User can't post questions when not logged in
      And I am not logged in
      Then I cannot create a question

  	Scenario: A User submits a question without title
      And I am logged in
      And I click on "Ask Question"
  		And I only fill in the decription
      And I click "Ask" 
      Then I should see an error "Title can't be blank"
    
    Scenario: A User submits a question without description
      And I am logged in
      And I click on "Ask Question"
      And I only fill in the title
      And I click "Ask" 
      Then I should see an error "Description can't be blank"


