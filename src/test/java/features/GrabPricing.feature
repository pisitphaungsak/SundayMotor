Feature: Get grab pricing


  Scenario Outline: grab pricing without dedutible
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
    Then Select specify driver ? <specifydriver>
    Then Open policy plan customize page <policytype>
    And Compare grabpricing with <policytype>, <mininsured> , <maxinsured> , <deductible> , <premiumbeforediscount> and <freshclaim>



    Examples:
      | carmake | caryear | carmodel | submodel                                     | dashcamera | specifydriver | policytype | mininsured | maxinsured | deductible | premiumbeforediscount | freshclaim |
      | Toyota  | 2005    | Vios     | Hatch 4dr Hybrid Standard grade CVT FWD 1.8i | no         | no            | 1          | 100000     | 300000     | 0          | 12500                 | 0          |
      #| Toyota  | 2015    | Prius    | Hatch 4dr Hybrid Standard grade CVT FWD 1.8i | no         | no            | 1          | 300001     | 500000     | 0          | 13910                 | 0          |
      #| Toyota  | 2015    | Prius    | Hatch 4dr Hybrid Standard grade CVT FWD 1.8i | no         | no            | 1          | 500001     | 700000     | 0          | 16585                 | 0          |
      #| Toyota  | 2015    | Prius    | Hatch 4dr Hybrid Standard grade CVT FWD 1.8i | no         | no            | 52         | 0          | 1000000000 | 0          | 7197                  | 250000     |
      #| Toyota  | 2015    | Prius    | Hatch 4dr Hybrid Standard grade CVT FWD 1.8i | no         | no            | 53         | 0          | 1000000000 | 0          | 6741                  | 250000     |

    #Altis Vios Yaris Amera March
  @Test
  Scenario Outline: grab pricing vios 2015
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
      | carmake | caryear | carmodel | submodel                                   | dashcamera | specifydriver | policytype |

      | TOYOTA  | 2005    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i (ABS,SRS)    | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i (ABS,SRS,IV) | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i (IV)         | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (IV)         | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr S Sporty Auto 4sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2005    | VIOS     | Sedan 4dr Turbo Man 5sp FWD 1.5iTi         | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i (ABS,SRS,IV) | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (IV)         | no         | no            | 1          |
      | TOYOTA  | 2006    | VIOS     | Sedan 4dr S Sporty Auto 4sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i (ABS,SRS,IV) | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (IV)         | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2007    | VIOS     | Sedan 4dr S Sporty Auto 4sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2008    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr GT Street Auto 4sp FWD 1.5i      | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2009    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr GT Street Auto 4sp FWD 1.5i      | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr J Sportivo Auto 4sp FWD 1.5i     | no         | no            | 1          |
      | TOYOTA  | 2010    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr J Sportivo Auto 4sp FWD 1.5i     | no         | no            | 1          |
      | TOYOTA  | 2011    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr ES Auto 4sp FWD 1.5i (50th)      | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2012    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i (LTD)        | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i (No ABS)     | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i (No ABS)      | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2013    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2014    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2015    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr E Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr E CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr E Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr Exclusive CVT 7sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr G Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr G CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr J Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr J CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr J Man 5sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr S Auto 4sp FWD 1.5i              | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr S CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2016    | VIOS     | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.5i   | no         | no            | 1          |
      | TOYOTA  | 2017    | VIOS     | Sedan 4dr E CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2017    | VIOS     | Sedan 4dr Exclusive CVT 7sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2017    | VIOS     | Sedan 4dr G CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2017    | VIOS     | Sedan 4dr J CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2017    | VIOS     | Sedan 4dr S CVT 7sp FWD 1.5i               | no         | no            | 1          |
      #| TOYOTA  | 2018    | VIOS     | Sedan 4dr E CVT 7sp FWD 1.5i               | no         | no            | 1          |
      #| TOYOTA  | 2018    | VIOS     | Sedan 4dr G CVT 7sp FWD 1.5i               | no         | no            | 1          |
      #| TOYOTA  | 2018    | VIOS     | Sedan 4dr J CVT 7sp FWD 1.5i               | no         | no            | 1          |
      #| TOYOTA  | 2018    | VIOS     | Sedan 4dr S CVT 7sp FWD 1.5i               | no         | no            | 1          |