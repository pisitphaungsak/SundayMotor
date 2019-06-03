Feature: Price Calculation
  This feature deal with OCI API server for

  Scenario: Login with correct user and password
    Given I navigate to Easy Sunday login page
    And I enter the username as admin and password as admin
    And I click login button
    Then I should see the home page.


  Scenario: Calculate policy insurance price for code 110

    Given I input for validate policies price with below data
      | sellnet  | policytype | carcode | carsize | driverage | carage | suminsured | cargroup | injurytpperson | injurytptime | injurytpdamage | seat | lifeloss | bailbond | medical | deductible |
      | 74546.90 | "v1"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
      | 74546.91 | "v2"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
      | 74546.92 | "v3"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
    And I call the OIC API for price calculation with this URL "/motor-pricing/oic"
    When I call to the price calculation with above data
    Then I got response code is OK





