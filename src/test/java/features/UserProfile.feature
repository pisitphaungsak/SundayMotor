Feature: User Profile

  Scenario: Open user profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button
    And I open user profile page
