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


    Examples:
      | carmake | caryear | carmodel | submodel                                 | dashcamera | specifydriver | policytype |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr G Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2006    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr G Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2007    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr G Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2008    | YARIS    | Hatch 4dr TRD Sportivo Auto 4sp FWD 1.5i | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr G Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2009    | YARIS    | Hatch 4dr TRD Sportivo Auto 4sp FWD 1.5i | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2010    | YARIS    | Hatch 4dr TRD Sportivo Auto 4sp FWD 1.5i | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2011    | YARIS    | Hatch 4dr TRD Sportivo Auto 4sp FWD 1.5i | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr E Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i (Standard) | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i (Standard)  | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr RS Auto 4sp FWD 1.5i           | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr S Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr S Limited Auto 4sp FWD 1.5i    | no         | no            | 1          |
      | TOYOTA  | 2012    | YARIS    | Hatch 4dr TRD Sportivo Auto 4sp FWD 1.5i | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr E Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr E Man 5sp FWD 1.5i             | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr G Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i            | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr J Auto 4sp FWD 1.5i (Standard) | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr J Man 5sp FWD 1.5i (Standard)  | no         | no            | 1          |
      | TOYOTA  | 2013    | YARIS    | Hatch 4dr RS Auto 4sp FWD 1.5i           | no         | no            | 1          |
      | TOYOTA  | 2014    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2014    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2014    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2014    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2014    | YARIS    | Hatch 4dr TRD Sportivo CVT 4sp FWD 1.2i  | no         | no            | 1          |
      | TOYOTA  | 2015    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2015    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2015    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2015    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2015    | YARIS    | Hatch 4dr TRD Sportivo CVT 4sp FWD 1.2i  | no         | no            | 1          |
      | TOYOTA  | 2016    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2016    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2016    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2016    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2016    | YARIS    | Hatch 4dr TRD Sportivo CVT 4sp FWD 1.2i  | no         | no            | 1          |
      | TOYOTA  | 2017    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2017    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2017    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2017    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2017    | YARIS    | Hatch 4dr TRD Sportivo CVT 4sp FWD 1.2i  | no         | no            | 1          |
      | TOYOTA  | 2018    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2018    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2018    | YARIS    | Hatch 4dr G+ CVT 4sp FWD 1.2i            | no         | no            | 1          |
      | TOYOTA  | 2018    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2018    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
      | TOYOTA  | 2019    | YARIS    | Hatch 4dr E CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2019    | YARIS    | Hatch 4dr G CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2019    | YARIS    | Hatch 4dr G+ CVT 4sp FWD 1.2i            | no         | no            | 1          |
      | TOYOTA  | 2019    | YARIS    | Hatch 4dr J CVT 4sp FWD 1.2i             | no         | no            | 1          |
      | TOYOTA  | 2019    | YARIS    | Hatch 4dr J ECO CVT 4sp FWD 1.2i         | no         | no            | 1          |
