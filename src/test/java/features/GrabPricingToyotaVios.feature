Feature:

  Scenario Outline: grab pricing Toyota Yaris 2010 - 2018
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
    And I am back to selece


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
      | TOYOTA  | 2018    | VIOS     | Sedan 4dr E CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2018    | VIOS     | Sedan 4dr G CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2018    | VIOS     | Sedan 4dr GT Street CVT 7sp FWD 1.5i       | no         | no            | 1          |
      | TOYOTA  | 2018    | VIOS     | Sedan 4dr J CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2018    | VIOS     | Sedan 4dr S CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2019    | VIOS     | Sedan 4dr E CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2019    | VIOS     | Sedan 4dr G CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2019    | VIOS     | Sedan 4dr J CVT 7sp FWD 1.5i               | no         | no            | 1          |
      | TOYOTA  | 2019    | VIOS     | Sedan 4dr S CVT 7sp FWD 1.5i               | no         | no            | 1          |