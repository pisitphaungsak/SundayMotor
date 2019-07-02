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
      | carmake | caryear | carmodel | submodel                                            | dashcamera | specifydriver | policytype |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2005    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr Q Auto 4sp FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (DVD)                   | no         | no            | 1          |
      | TOYOTA  | 2006    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (DVD)                   | no         | no            | 1          |
      | TOYOTA  | 2007    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr G Extremo Auto 4sp FWD 2.0i               | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (DVD)                   | no         | no            | 1          |
      | TOYOTA  | 2008    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr G Extremo Auto 4sp FWD 2.0i               | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i                         | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr V Extremo SA 5sp FWD 2.4i                 | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (DVD)                   | no         | no            | 1          |
      | TOYOTA  | 2009    | CAMRY    | Sedan 4dr V SA 5sp FWD 2.4i (Navi)                  | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr G Extremo Auto 4sp FWD 2.0i               | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2010    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i                         | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr G Extremo Auto 4sp FWD 2.0i               | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr Hybrid Extremo CVT FWD 2.4i               | no         | no            | 1          |
      | TOYOTA  | 2011    | CAMRY    | Sedan 4dr Q SA 6sp FWD 3.5i                         | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr E Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G Auto 4sp FWD 2.0i                       | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G Extremo Auto 4sp FWD 2.0i               | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G Extremo SA 4sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G SA 4sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G SA 5sp FWD 2.4i                         | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i                       | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.4i (Navi)                | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (CD)                  | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2012    | CAMRY    | Sedan 4dr Hybrid Extremo CVT FWD 2.4i               | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr G Extremo SA 4sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr G SA 4sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (CD)                  | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2013    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr G Extremo SA 4sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr G SA 4sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (CD)                  | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2014    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr ESPORT SA 6sp FWD 2.5i (CBU)              | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr G Extremo SA 4sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr G Extremo SA 6sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr G SA 4sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (CD)                  | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (DVD)                 | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2015    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium)             | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr ESPORT SA 6sp FWD 2.5i (CBU)              | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr G Extremo SA 6sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (CD)                  | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2016    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium)             | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr ESPORT SA 6sp FWD 2.5i (CBU)              | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr G Extremo SA 6sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2017    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium)             | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr ESPORT SA 6sp FWD 2.5i (CBU)              | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr G Extremo SA 6sp FWD 2.0i                 | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr G SA 8sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i                       | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navi, Telematics)    | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Navigator)           | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium)             | no         | no            | 1          |
      | TOYOTA  | 2018    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium, Telematics) | no         | no            | 1          |
      | TOYOTA  | 2019    | CAMRY    | Sedan 4dr G SA 6sp FWD 2.0i                         | no         | no            | 1          |
      | TOYOTA  | 2019    | CAMRY    | Sedan 4dr G SA 8sp FWD 2.5i                         | no         | no            | 1          |
      | TOYOTA  | 2019    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i                       | no         | no            | 1          |
      | TOYOTA  | 2019    | CAMRY    | Sedan 4dr Hybrid CVT FWD 2.5i (Premium)             | no         | no            | 1          |