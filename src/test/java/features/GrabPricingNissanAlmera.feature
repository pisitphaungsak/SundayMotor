Feature:

  Scenario Outline: grab pricing Nissan Almera 2011 - 2018
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


    Examples:
      | carmake | caryear | carmodel | submodel                                   | dashcamera | specifydriver | policytype | repairgrade | deductible |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 52         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2011    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 53         | 2           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2012    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2013    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr ES XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT 4sp FWD 1.2i       | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT 4sp FWD 1.2i      | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2014    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2015    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2016    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2017    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr E XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr EL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr V XTRONIC CVT FWD 1.2i           | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2018    | ALMERA   | Sedan 4dr VL XTRONIC CVT FWD 1.2i          | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E Nismo XTRONIC CVT FWD 1.2i     | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr E SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr EL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr S Man 5sp FWD 1.2i               | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr V SPORTECH XTRONIC CVT FWD 1.2i  | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL Nismo XTRONIC CVT FWD 1.2i    | no         | no            | 1          | 1           | 0          |
      | NISSAN  | 2019    | ALMERA   | Sedan 4dr VL SPORTECH XTRONIC CVT FWD 1.2i | no         | no            | 1          | 1           | 0          |