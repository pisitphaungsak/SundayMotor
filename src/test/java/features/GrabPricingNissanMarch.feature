Feature:


  Scenario Outline: grab pricing Nissan March 2010 - 2018
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
      | carmake | caryear | carmodel | submodel                                     | dashcamera | specifydriver | policytype |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 1          |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Smart Edition CVT FWD 1.2i       | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 1          |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 1          |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 1          |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 1          |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 1          |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 52         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Smart Edition CVT FWD 1.2i       | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 52         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 52         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 52         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 52         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 52         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2010    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2011    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2012    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V CVT FWD 1.2i                     | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL CVT FWD 1.2i                    | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL Sport Version CVT FWD 1.2i      | no         | no            | 53         |
      | NISSAN  | 2013    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E Smart Edition CVT FWD 1.2i       | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2014    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 53         |
      | NISSAN  | 2015    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition CVT FWD 1.2i     | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Limited Edition Man 5sp FWD 1.2i | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL Limited Edition CVT FWD 1.2i    | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V Sport Deco XTRONIC CVT FWD 1.2i  | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL Sport Deco XTRONIC CVT FWD 1.2i | no         | no            | 53         |
      | NISSAN  | 2016    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2017    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr V XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2018    | MARCH    | Hatch 4dr VL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E Man 5sp FWD 1.2i                 | no         | no            | 53         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr E XTRONIC CVT FWD 1.2i             | no         | no            | 53         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr EL XTRONIC CVT FWD 1.2i            | no         | no            | 53         |
      | NISSAN  | 2019    | MARCH    | Hatch 4dr S Man 5sp FWD 1.2i                 | no         | no            | 53         |