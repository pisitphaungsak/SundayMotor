Feature:

  @Test
  Scenario Outline: grab pricing Toyota Corolla Fortuner 2010 - 2018
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
      | carmake | caryear | carmodel | submodel                                                   | dashcamera | specifydriver | policytype | repairgrade | deductible |
      # Repair Grade =2 No Discount
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 4sp 4WD 3.0DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT (50th)                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 2           | 0          |

  # First Class Repair Grade =2 With camera installed
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 4sp 4WD 3.0DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT (50th)                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | no            | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | no            | 1          | 2           | 0          |

# First Class Repair Grade =2 With driver specific
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 4sp 4WD 3.0DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT (50th)                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | yes           | 1          | 2           | 0          |

 # First Class Repair Grade =2 With driver specific, Camera installed and deduct = 0

      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2005    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2006    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 2.7i                | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Exclusive 7st Auto 4sp 4WD 3.0DCT              | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2007    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2008    | FORTUNER | Wagon 4dr V Smart 7st Auto 4sp 4WD 3.0DCT                  | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo I 7st Auto 4sp 4WD 3.0DCT           | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2009    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 3.0DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo II 7st Auto 4sp 4WD 3.0DCT          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2010    | FORTUNER | Wagon 4dr V Aperto 7st Auto 4sp RWD 3.0DCT                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr TRD Sportivo III 7st Auto 4sp 4WD 3.0DCT         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (DVD,NV)               | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2011    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 4sp 4WD 3.0DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp 4WD 3.0DCT (Navi)                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 3.0DCT (50th)                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2012    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Auto 5sp RWD 2.5DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp 4WD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2013    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT (50th)                 | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2014    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 5sp RWD 2.5DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 5sp 4WD 3.0DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 4sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp 4WD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 2.5DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 5sp RWD 3.0DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2015    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | yes        | yes           | 1          | 2           | 0          |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | yes        | yes           | 1          | 2           | 0          |

# First Class Repair Grade =1  deduct = 5000

      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2016    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT (Black Top) | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT (Black Top) | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2017    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr G 7st Man 6sp RWD 2.4DCT                         | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp 4WD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr TRD Sportivo 7st Auto 6sp RWD 2.8DCT             | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.4DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp 4WD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.4DCT                        | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.7i                          | no         | no            | 1          | 1           | 5000       |
      | TOYOTA  | 2018    | FORTUNER | Wagon 4dr V 7st Auto 6sp RWD 2.8DCT                        | no         | no            | 1          | 1           | 5000       |








