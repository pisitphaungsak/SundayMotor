Feature: Sunday Home Page
  Scenario: validate broker name is "Sunday Insurance 2019. All rights reserved."
    Given I nevigate to easysunday home page
    When I scholl down to buttom of page
    Then I can see Sunday Insurance 2019. All rights reserved. as broker name