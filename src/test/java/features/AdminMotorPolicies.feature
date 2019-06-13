Feature: Admin Motor Policies

  @Test
  Scenario: Open Admin Motor Policies page
    Given Open Sunday Admin page
    And Login to the Admin page
    And Open Motor Policies menu
    When I open All Motor  Policies sub menu

  @Test
  Scenario: Search motor policy by
    Given Open Motor Policies Admin Page
    And I enter into ALL MOTOR POLICIES
    And I open Search Policies window

