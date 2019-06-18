Feature: new user profile page on Motor Front End

  Scenario: Open User Profile page
    Given Open Motor Front End Home Page
    And Open Motor Frontend login page
    And I enter the following for Motor FE login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button for Motor FE


  Scenario: Validate thai text label on Motor Front End Page
    Given Open Motor Front End Home Page
    Then validate top thai menu with below data
    |menu1 |menu2 |menu3|menu4|menu5|menu6|
    |หน้่าหลัก|


  Scenario: Open Change password windows


  @Test
  Scenario: Open user profile page for single.policy user
    Given Login to Motor FE with below user
      | username                | password |
      | single.policy@gmail.com | motor9   |
    When login success I will see "single.policy@gmail.com" as login user name



