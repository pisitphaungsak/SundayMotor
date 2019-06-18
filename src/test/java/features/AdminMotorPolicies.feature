Feature: Admin Motor Policies


  Scenario: Open Admin Motor Policies page
    Given Open Sunday Admin page
    And Login to the Admin page
    And Open Motor Policies menu
    When I open All Motor  Policies sub menu


  @Test
    Scenario: Update Policy holder name
    Given Open Sunday Admin page
    And Login to the Admin page
    And Open Motor Policies menu
    And I open All Motor  Policies sub menu
