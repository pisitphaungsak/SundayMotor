Feature: LoginFeature

  Scenario: Login with correct username and password
    Given I nevigate to easysunday home page
    And I open sunday login page
    And I enter the following for login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button
    Then I should see my name on top rignt of page
