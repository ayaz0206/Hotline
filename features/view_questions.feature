Feature: View Questons

  Background:
    Given I create a question
    Given I am on the homepage

  Scenario: A User can view questions titles on the hompepage
    Then I see a question title with questioners fullname

  Scenario: A User can see the description of a question  
    And I click on a question title
    Then I should see the question description
