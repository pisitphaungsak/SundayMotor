Feature: Select car personal car or commercial car
  ipad 768 x 914


  Scenario: Open CTP car-plate and select yellow plate
    Given Open Motor FE CTP car plate with this resolution "768" x "1024"
    When I select "yellow" plate
    Then Sunday contact information will displayed
    And  Sunday contact information are Tel. number "02-026-3355" , Line  "@easysunday" and Email "hello@easysunday.com"
    Then Capture screen and file name is "mot282/car_plate_yellow_tablet_768x1024"

  Scenario: Open CTP car-plate and select yellow plate
    Given Open Motor FE CTP car plate with this resolution "769" x "1024"
    When I select "yellow" plate
    Then Sunday contact information will displayed
    And  Sunday contact information are Tel. number "02-026-3355" , Line  "@easysunday" and Email "hello@easysunday.com"
    Then Capture screen and file name is "mot282/car_plate_yellow_tablet_768x1024"


  Scenario: Open CTP car-plate and select white plate 768 x 1024
    Given Open Motor FE CTP car plate with this resolution "768" x "1024"
    When I select "white" plate
    Then Validate Okey button is displayed
    And Validate Okey button is enabled
    Then Capture screen and file name is "mot282/car_plate_white_tablet_768x1024"


  Scenario: Open CTP car-seletion plate 768 x 1024
    Given Open Motor FE CTP car plate with this resolution "768" x "1024"
    When I select "white" plate
    Then Validate Okey button is displayed
    And Validate Okey button is enabled
    And I click car plate submit button for moving to next page
    Then Capture screen and file name is "mot282/car_selection_768x1024"

  @Test
  Scenario: Open CTP car-plate and select white plate 770 x 1024
    Given Open Motor FE CTP car plate with this resolution "1100" x "1024"
    When I select "white" plate
    Then Validate Okey button is displayed
    And Validate Okey button is enabled
    And I click car plate submit button for moving to next page
    Then Capture screen and file name is "mot282/car_selection_1100x1024"


