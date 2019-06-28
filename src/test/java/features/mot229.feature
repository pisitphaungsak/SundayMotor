Feature: Motor Front End Policy detail page

  @Test
  Scenario: Display Policy detail for first class policy
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page
    When I open first policy
   # Then


  Scenario: Display Policy detail for second class policy
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page

  Scenario: Display Policy detail for third class policy
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page

  Scenario: Display Policy detail for third class policy
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page