Feature: Get grab pricing


  Scenario: Login to Grab Home page
    Given Open Sunday Grab Home Page
    And Login to Sunday by use below information
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And Open Check policy pricing for grab car
    And Select car brand "Toyota"
    And Select car year "2016"
    And Select car model "Vios"
    And Select car sub-model "Sedan 4dr J Man 5sp FWD 1.5i"

  @Test
  Scenario Outline: test
    Given Open Sunday Grab Home Page
    And Login to Sunday by use below information
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And Open Check policy pricing for grab car
    And Select car brand <carmake>
    And Select car year <caryear>
    And Select car model <carmodel>
    And Select car sub-model <submodel>
    Then click next button for moving to next page


    And I select car with <carmake> , <caryear> , <model> and <submodel>

    Examples:
      | carmake | caryear | carmodel | submodel                                            |
      | Toyota  | 2016    | Vios     | Sedan 4dr J Man 5sp FWD 1.5i                        |
      | Ford    | 2014    | Focus    | Sedan 4dr Titanium+ Auto 6sp FWD 2.0i (Luxury Pack) |