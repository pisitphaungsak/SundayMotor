Feature:
  Verify different GET operations using REST-assured


  Scenario: Verify one author of the post
    Given Get token id for below user
      | email                   | password |
      | single.policy@gmail.com | motor9   |
    When I get


