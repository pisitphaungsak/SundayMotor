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
      | carmake | caryear | carmodel | submodel                                   | dashcamera | specifydriver | policytype | repairgrade | deductible |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | no         | no            | 1          | 2           | 0          |
    #  | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
     # | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | yes        | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      #| TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      #| TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      #| TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      #| TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |


