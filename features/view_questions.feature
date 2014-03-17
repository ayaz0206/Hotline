Feature: View Questons

  Background:
    Given I create a question

  Scenario: A User can view questions titles on the hompepage
    Given I am on the homepage
    Then I should see a question title

  Scenario: A User can see the description of a question  
    Given I am on the homepage
    And I click on a question title
    Then I should see the question description
