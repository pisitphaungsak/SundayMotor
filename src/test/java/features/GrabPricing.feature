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
    Then Select camera installed options <dashcamera>
    Then Select spicify driver ? <specifydriver>




    And I select car with <carmake> , <caryear> , <carmodel> and <submodel>

    Examples:
      | carmake | caryear | carmodel | submodel                                            | dashcamera | specifydriver | v1mininsure | v1maxinsure | v1price | v52mininsure | v52maxinsure | v52price | v53mininsure | v53maxinsure | v53price |
      | Toyota  | 2016    | Vios     | Sedan 4dr J Man 5sp FWD 1.5i                        | no         | no            | 300000      | 37000       | 12600   | 300000       | 37000        | 8500     | 300000       | 37000        | 5500     |
      | Ford    | 2014    | Focus    | Sedan 4dr Titanium+ Auto 6sp FWD 2.0i (Luxury Pack) | no         | no            | 300000      | 37000       | 12600   | 300000       | 37000        | 8500     | 300000       | 37000        | 5500     |