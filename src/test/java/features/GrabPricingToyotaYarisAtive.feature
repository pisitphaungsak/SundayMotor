Feature:

  Scenario Outline: grab pricing Toyota Corolla Altis 2010 - 2018
    Given Open Sunday Grab Home Page
    And Login to Sunday by use below information
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And Open Check policy pricing for grab car
    And Select car information with these data <carmake> ,<caryear> ,<carmodel> and <submodel>
    And click next button for moving to next page
    And Select camera installed options <dashcamera>
    And Select specify driver ? <specifydriver>
    When Open policy plan customize page <policytype>
    Then I can find max insured and policy price on the page

    Examples:
      | carmake | caryear | carmodel   | submodel                     | dashcamera | specifydriver | policytype |
      | TOYOTA  | 2017    | YARIS ATIV | Sedan 4dr E CVT 4sp FWD 1.2i | no         | no            | 1          |