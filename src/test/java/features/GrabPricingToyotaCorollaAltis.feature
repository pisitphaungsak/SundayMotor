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
      | carmake | caryear | carmodel      | submodel                                                | dashcamera | specifydriver | policytype |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (ABS,AB)            | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (ABS,AB,LTD)        | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis E Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2005    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (ABS,AB)            | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (ABS,AB,LTD)        | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i (LST)               | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis E Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i (DVD,LST)           | no         | no            | 1          |
      | TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis G Edition Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis G Limited Auto 4sp FWD 1.8i             | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2006    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i (LST)               | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis E Limited Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis E Limited Auto 4sp FWD 1.8i             | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis E Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i (DVD,LST)           | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis G Edition Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis G Limited Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2007    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i (LST)               | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Limited Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Limited Auto 4sp FWD 1.8i             | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis E Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i (DVD,LST)           | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis G Limited Auto 4sp FWD 1.6i             | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2008    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 5sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i (MY09 spec.)        | no         | no            | 1          |
      | TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis E Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i (MY09 spec.)        | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 2.0i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis SS-I Auto 4sp FWD 1.6i                  | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis V Auto 4sp FWD 2.0i                     | no         | no            | 1          |
      #| TOYOTA  | 2009    | COROLLA ALTIS | Sedan 4dr Altis V Auto 4sp FWD 2.0i (Navi)              | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 5sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i (Black Bumper)     | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.8i (MY09 spec.)        | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      | TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      | TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.8i (MY09 spec.)        | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 2.0i                     | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis J Man 5sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i                      | no         | no            | 1          |
      | TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis V Auto 4sp FWD 2.0i                     | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis V Auto 4sp FWD 2.0i (Navi)              | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      | TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.6i                | no         | no            | 1          |
      #| TOYOTA  | 2010    | COROLLA ALTIS | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.8i                | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i (Black Bumper)     | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      ##| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      ##| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      ##| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i                      | no         | no            | 1          |
      ##| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      ##| TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i (Navi)               | no         | no            | 1          |
      | TOYOTA  | 2011    | COROLLA ALTIS | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.8i                | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i (50th)               | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis J Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2012    | COROLLA ALTIS | Sedan 4dr TRD Sportivo Auto 4sp FWD 1.8i                | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis CNG Man 6sp FWD 1.6i                    | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2013    | COROLLA ALTIS | Sedan 4dr TRD Sportivo CVT 7sp FWD 1.8i                 | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis E Auto 4sp FWD 1.6i (CNG)               | no         | no            | 1          |
      | TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.6i (CNG)                | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis G Auto 4sp FWD 1.6i                     | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i                      | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis J Man 6sp FWD 1.6i (CNG)                | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i                      | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr Altis V CVT 7sp FWD 2.0i (Navi)               | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr S CVT 7sp FWD 1.8i (ESport)                   | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr TRD Sportivo CVT 7sp FWD 1.8i                 | no         | no            | 1          |
      #| TOYOTA  | 2014    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi)                     | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr Altis E CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr Altis G CVT 7sp FWD 1.8i                      | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.6i (CNG)                      | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Nurburgring Edition) | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr S CVT 7sp FWD 1.8i (ESport)                   | no         | no            | 1          |
      #| TOYOTA  | 2015    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi)                     | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.6i (CNG)                      | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i                       | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Nurburgring Edition) | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Option)              | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr J Man 6sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr J Man 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr S CVT 7sp FWD 1.8i (ESport)                   | no         | no            | 1          |
      #| TOYOTA  | 2016    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi)                     | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.6i (CNG)                      | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i                       | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Option)              | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr J Man 6sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2017    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi)                     | no         | no            | 1          |
      | TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.6i (CNG)                      | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i                       | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Option)              | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr J Man 6sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr S CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi)                     | no         | no            | 1          |
      #| TOYOTA  | 2018    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi, Telematics)         | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.6i (CNG)                      | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr E CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i                       | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr ESPORT CVT 7sp FWD 1.8i (Option)              | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr G CVT 7sp FWD 1.6i                            | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr S CVT 7sp FWD 1.8i                            | no         | no            | 1          |
      #| TOYOTA  | 2019    | COROLLA ALTIS | Sedan 4dr V CVT 7sp FWD 1.8i (Navi, Telematics)         | no         | no            | 1          |