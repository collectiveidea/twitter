Feature: A user can view a user's tweets
  In order to learn about other users
  As a user
  I can view all of another user's tweets
  
  Scenario: Tweeting
    Given the following tweets exist:
      | body            | username |
      | Hello World     | bob      |
      | Insightful info | bob      |
      | Hi!             | alice    |
    And I am on the home page
    When I follow "@bob"
    Then I should see "Hello World"
    And I should see "Insightful info"
    And I should not see "Hi!"
    When I go to the home page
    And I follow "@alice"
    Then I should see "Hi!"
    And I should not see "Hello World"
    And I should not see "Insightful info"
