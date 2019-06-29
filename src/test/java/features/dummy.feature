Feature:

  @Test
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
    And Select repair grade <repairgrade>
    And Select deductible options <deductible>

    Then I can find max insured and policy price on the page
   # Repair Grade 1 = DealerOrGarage , 2 = Garage only
    Examples:
      | carmake | caryear | carmodel | submodel                      | dashcamera | specifydriver | policytype | repairgrade | deductible |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i | yes        | no            | 1         | 2           | 0          |














