Feature: User Profile

  Scenario: Open user profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button
    And I open user profile page

  Scenario: Open single policy profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | single.policy@gmail.com | motor9   |
    And I click login button
    And Open single.profile profile page

  Scenario: Open multiple policies profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | multiple.policy@gmail.com | motor9   |
    And I click login button
    And Open multiple.profile profile page

  Scenario: Open no policies profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | no.policy@gmail.com | motor9   |
    And I click login button
    And Open no.profile profile page

  Scenario: Open expire policy profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | expire.policy@gmail.com | motor9   |
    And I click login button
    And Open expire.profile profile page

  Scenario: Open cancel policy profile page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | cancel.policy@gmail.com | motor9   |
    And I click login button
    And Open cancel.profile profile page

  @Test
  Scenario: Open user profile editor page
    Given I open sunday login page
    And I enter the following for login
      | username                | password |
      | cancel.policy@gmail.com | motor9   |
    And I click login button
    And Open cancel.profile profile page
    And Open edit user info page
    And Modify user profile first name "Motor"
    And Modify user profile last name "Tester"
    And I click save button on user profile editor page


