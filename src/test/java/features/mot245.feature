Feature: Update My Info on Motor FE profile page

  @Test
  Scenario: Open Motor FE user profile editor page with new user
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page
    When I click edit Motor FE user profile icon
    #Then Validate on field name should display "blank"
    #And  Validate on field last name should display "blank"
    #And  Validate on field Phone number should display "blank"
    #And  Validate on field Address should display "blank"
    #And  Validate on province drop down is "enable"
    #And  Validate on district drop down is "disable"
    #And  Validate on sub-district drop down is "disable"
    #And  Validate on post code field is "disable"
    #And  Validate on post code filed should display "blank"

    #Scenario: district drop down is "disable"