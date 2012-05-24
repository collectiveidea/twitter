Feature: A user can tweet
  In order to convey insigtful information
  As a user
  I can tweet
  
  Scenario: Tweeting
    Given I am on the home page
    When I fill in "Body" with "Hello World!"
    And I fill in "Username" with "danielmorrison"
    And I press "Tweet"
    Then I should see "Hello World!"
    And I should see "danielmorrison"
    And I should see "less than a minute ago"