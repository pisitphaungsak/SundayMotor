Feature: Select car personal car or commercial car
  ipad 768 x 914


  Scenario: Open CTP car-plate in iPad resolution width 768 x 1024
    Given Open Motor FE CTP car plate with this resolution "768" x "1024"
    When I select "yellow" plate
    Then Sunday contact information will displayed
    And  Sunday contact information are Tel. number "02-026-3355" , Line  "@easysunday" and Email "hello@easysunday.com"

    #Then Background color of button will change to color "yellow"
  @Test
  Scenario: Open CTP car-plate and select white plate
    Given Open Motor FE CTP car plate with this resolution "768" x "1024"
    When I select "white" plate
    Then Validate Okey button is displayed
    And Validate Okey button is enabled

