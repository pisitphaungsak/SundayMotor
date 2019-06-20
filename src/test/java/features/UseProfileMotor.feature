Feature: new user profile page on Motor Front End

  @Test
  Scenario: Open user profile page for single.policy user
    Given Login to Motor FE with below user
      | username                | password |
      | single.policy@gmail.com | motor9   |
    When login success I will see "single.policy@gmail.com" as login user name
    And click on user name
    And I open user profile page




  #under invertigation
  Scenario: first time login with google user
    Given Login to google with below user
      | username                    | password |
      | test1998.profiles@gmail.com | GM3in@B* |
    Then Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And I sign up a user with Google


  Scenario: Validate left menu label text for thai on Motor Front End Page
    Given Open Motor Front End Home Page Without user login
    When I click the menu icon for open left menu
    Then validate left thai menu with out user login with this data "หน้าหลัก" , "คำถามที่พบบ่อย" , "เคลม" , "ประวัติซันเดย์" ,"บทความ" and "เข้าสู่ซันเดย์"


  Scenario: Validate left menu label text for english on Motor Front End Page
    Given Open Motor Front End Home Page Without user login
    When I change to english langluage
    #When I click the menu icon for open left menu






  Scenario: Open user profile page for multiple.policy user
    Given Login to Motor FE with below user
      | username                  | password |
      | multiple.policy@gmail.com | motor9   |
    When login success I will see "multiple.policy@gmail.com" as login user name
    And click on user name


  Scenario: Open user profile page for cancel.policy user
    Given Login to Motor FE with below user
      | username                | password |
      | cancel.policy@gmail.com | motor9   |
    When login success I will see "cancel.policy@gmail.com" as login user name
    And click on user name
   # Then user profile page will displayed





