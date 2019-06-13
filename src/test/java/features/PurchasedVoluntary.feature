Feature: Purchase The voluntary policy
  Scenario Outline: test
    Given I nevigate to easysunday home page
    And I open sunday login page
    And I enter the following for login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button
    And I open get car insurance price
    Examples:
    |carmake|caryear|
    |Toyota |2018   |