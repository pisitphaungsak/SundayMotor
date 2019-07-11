Feature: Motor Front End Policy detail page

  Scenario: Display Policy detail for first class policy
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And Open Motor FE policy detail page for policy bundle id "7"




    #MOT-281
   #when policy is required documents, upload options for car_front, car_back, car_right, car_left, id_card and  car_registration are mandatory.
   #when policy is required documents, upload options for previous policy is optional.
    #When policy not specify driver , then not display upload option for driver.
    #When policy is required 1 driver , then  display upload option for driver 1.
   # When policy is required 2 drivers , then  display upload option for driver_1 and driver_2.
  @Test
  Scenario: Upload documents for voluntary policy with not specify driver
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And Login to Motor FE with below user
      | username               | password |
      | motor.tester@gmail.com | motor9   |
    And I open Motor FE user profile page
    #And Open Motor FE policy detail page for policy bundle id "8"