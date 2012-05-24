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
  
  Scenario: Viewing existing tweets
    Given the following tweets exist:
      | body        | username |
      | Hello world | bob      |
      | Hi!         | alice    |
    When I go to the home page
    Then I should see "Hello world"
    And I should see "@bob"
    And I should see "Hi!"
    And I should see "@alice"
    
  Scenario: A user sees 10 tweets per page
    Given the following tweets exist:
      | body         | username |
      | Is this on?  | oldman   |
      | Hi!          | alice    |
      | Hello world  | bob      |
      | Hi!          | alice    |
      | How are you? | bob      |
      | I'm fine     | alice    |
      | Really?      | bob      |
      | Yes and you? | alice    |
      | not too bad  | bob      |
      | That's good  | alice    |
      | Hello world  | bob      |
      | Hi!          | alice    |
    When I go to the home page
    Then I should not see "@oldman"
    And I should see "Next"
    When I follow "Next"
    Then I should see "@oldman"
    And I should see "Is this on?"
    