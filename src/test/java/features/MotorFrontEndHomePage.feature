Feature: Motor Front End Home Page


  Scenario: Validate top menu label text for thai on Motor Front End Page
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And I enter the following for Motor FE login
      | username                | password |
      | pisit.ph@easysunday.com | Welcome1 |
    And I click login button for Motor FE
    Then validate top thai menu with this data "หน้าหลัก" , "คำถามที่พบบ่อย" , "เคลม" , "ประวัติซันเดย์" ,"บทความ" and "ออกจากระบบ"
    When I change to english language
    Then validate top english menu with this data "Home" , "FAQ" , "Claims" , "About us" ,"Blog" and "Sign out"


  @Test
  Scenario: Login to Motor Front End Success
    Given Open Motor Front End Home Page Without user login
    And Open Motor Frontend login page
    And I enter the following for Motor FE login
      | username                | password |
      | single.profile@gmail.com | motor9 |
    When I click login button for Motor FE
    #Then login success I will see "single.policy@gmail.com" as login user name
