Feature:  redirect to login page on Motor FE when user does not login
 @Test
  Scenario: Open FAQ page with out log in
    Given Open Motor Front End Home Page Without user login
    And I click FAQ menu
    Then Redirect to Motor Front End login page
   When I enter the following for Motor FE login
     | username                | password |
     | pisit.ph@easysunday.com | Welcome1 |
   Then auto redirect to FAQ page
