Feature: Validate for policy type options
  This feature

  Scenario Outline: Call to OIC API with valid policy type

    Given I input <SELLNET>
    And I input <POLICYTYPE>



    Examples:
      | SELLNET  | POLICYTYPE |
      | 74546.91 | "v1"       |
      | 74546.92 | "v2"       |

    #Examples: valid policy data
    #  | sellnet  | policytype | carcode | carsize | driverage | carage | suminsured | cargroup | injurytpperson | injurytptime | injurytpdamage | seat | lifeloss | bailbond | medical | deductible |
    #  | 74546.90 | "v1"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
    #  | 74546.91 | "v2"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
    #  | 74546.92 | "v3"       | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
    #  | 74546.92 | "v52"      | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |
    #  | 74546.92 | "v53"      | "110"   | 1995    | 0         | 3      | 2600000    | 2        | 1000000        | 10000000     | 2500000        | 7    | 200000   | 200000   | 300000  | 0          |


