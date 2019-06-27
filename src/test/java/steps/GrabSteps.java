package steps;

import base.BaseWebUI;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import pages.SundayGrabHomePage;

import java.sql.*;
import java.util.concurrent.TimeUnit;

public class GrabSteps extends BaseWebUI {

    public GrabSteps(BaseWebUI base) {

        this.base = base;
    }

    private final String url = "jdbc:oracle:thin:@localhost:1521:test01";
    private final String user = "c##mot";
    private final String password = "motor9";

    private static String motorMake;
    private static String yearGroup;
    private static String motorModel;
    private static String motorSubModel;
    private static String isCamaraInstall;
    private static String isDriverSpecific;
    private static String deductible;
    private static String grabCarType;
    private static String policyType;
    private static String packageName;




    private static String actualMaxSumInsured;
    private static String expectedMaxSumInsured;
    private static String actualPremiumBeforeDiscount;


    private BaseWebUI base;

    @Given("^Open Sunday Grab Home Page$")
    public void openSundayGrabHomePage() throws InterruptedException {
        base.Driver.navigate().to(base.grabHomePage_test);
        base.Driver.manage().window().maximize();
        base.Driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
            Thread.sleep(1000);
        try{
            WebElement html =  base.Driver.findElement(By.tagName("html"));
            for(int i= 0; i < 5 ;i++){


                       html.sendKeys(Keys.chord(Keys.COMMAND,Keys.SUBTRACT));
            }
        }catch (Exception e){
            System.out.println("Error Messsage " +e.getMessage());
        }

        motorMake ="";
        yearGroup ="";
        motorModel ="";
        motorSubModel ="";
        isCamaraInstall ="";
        isDriverSpecific ="";
        deductible="";
        grabCarType="";
        packageName ="";
        actualMaxSumInsured ="";
        expectedMaxSumInsured ="";
        actualPremiumBeforeDiscount ="";

    }

    @And("^Open Check policy pricing for grab car$")
    public void openCheckPolicyPricingForGrabCar() {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.btnCheckPrice.click();
    }


    @And("^Select car information with these data ([^\"]*) ,([^\"]*) ,([^\"]*) and ([^\"]*)$")
    public void selectCarInformationWithTheseDataCarmakeCaryearCarmodelAndSubmodel(String inCarMake, String inYear, String inCarModel, String inCarSubModel) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        motorMake = inCarMake;
        yearGroup = inYear;
        motorModel = inCarModel;
        motorSubModel = inCarSubModel;

        expectedMaxSumInsured = getMaxSumInsure(inCarMake.toUpperCase(), Integer.valueOf(inYear), inCarModel.toUpperCase(), inCarSubModel);
        grabHomePage.selectCarBrandCarmake(motorMake);
        grabHomePage.selectCarYearCaryear(yearGroup);
        grabHomePage.selectCarModelCarmodel(motorModel);
        grabHomePage.selectCarSubModelSubmodel(motorSubModel);

    }


    @And("^Select car brand ([^\"]*)$")
    public void selectCarBrandCarmake(String carMake) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.selectCarBrandCarmake(carMake);
    }

    @And("^Select car year ([^\"]*)$")
    public void selectCarYearCaryear(String carYear) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.selectCarYearCaryear(carYear);
    }

    @And("^Select car model ([^\"]*)$")
    public void selectCarModelCarmodel(String carmodel) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.selectCarModelCarmodel(carmodel);
    }

    @And("^Select car sub-model ([^\"]*)$")
    public void selectCarSubModelSubmodel(String submodel) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.selectCarSubModelSubmodel(submodel);
    }


    @Then("^click next button for moving to next page$")
    public void clickNextButtonForMovingToNextPage() {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);

        System.out.print("Car Make : " + motorMake);
        grabHomePage.btnConfirmSummary.click();

    }


    @Then("^Select camera installed options ([^\"]*)$")
    public void selectCameraInsrtalledOptionsDashcamera(String installed) {
        WebDriverWait waiter = new WebDriverWait(base.Driver, 5);
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        Actions actions = new Actions(base.Driver);

        isCamaraInstall = installed;
        //actions.moveToElement(grabHomePage.btncameraInstalled).click();
        //actions.click();
        actions.click(grabHomePage.btncameraNotInstalled);
        actions.perform();
/*
        if (installed =="yes") {
            System.out.print("Camera installed");
            actions.click(grabHomePage.btncameraInstalled);
        actions.perform();
        }else if (installed =="no"){
            System.out.print("Camera not installed");
            actions.click(grabHomePage.btncameraNotInstalled);
            actions.perform();
        }
*/
        grabHomePage.btnCameraNext.submit();


    }

    @Then("^Select specify driver \\? ([^\"]*)$")
    public void selectSpecifyDriverSpecifydriver(String driverSpecific) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 5);
        Actions actions = new Actions(base.Driver);
        waiter.until(ExpectedConditions.elementToBeClickable(grabHomePage.btnNotSpecifyDriver));
        isDriverSpecific = driverSpecific;

        actions.click(grabHomePage.btnNotSpecifyDriver);
        actions.perform();

        if (driverSpecific == "yes") {
            actions.click(grabHomePage.btnSpecifyDriver);
            actions.perform();
        } else if (driverSpecific == "no") {
            actions.click(grabHomePage.btnNotSpecifyDriver);
            actions.perform();
        }
        grabHomePage.btnSpecifyDriverNext.click();
    }

    @Then("^Open policy plan customize page ([^\"]*)$")
    public void openPolicyPlanCustomizePagePolicytype(int inPolicyType) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        policyType = String.valueOf(inPolicyType);
        grabCarType = getGrabCarType();


        if (inPolicyType == 1) {
            packageName = "Type1 " + grabCarType;
            grabHomePage.btnPlanOne.click();
        } else if (inPolicyType == 52) {
            grabHomePage.btnPlanTwoPlus.click();
        } else if (inPolicyType == 53) {
            grabHomePage.btnPlanThreePlus.click();
        }
    }


    @Then("^I can find max insured and policy price on the page$")
    public void iCanFindMaxInsuredAndPolicyPriceOnThePage() throws InterruptedException {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        Select deductList = new Select(grabHomePage.deductibleList);
        Actions actions = new Actions(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 10);

        waiter.until(ExpectedConditions.elementToBeClickable(grabHomePage.deductibleList));
        actions.moveToElement(grabHomePage.deductibleList);
        actions.perform();

        Thread.sleep(2000);



       // do {
            actions.moveToElement(grabHomePage.deductibleList);
            actions.perform();
            deductList.selectByIndex(0);
       // } while ( deductList.getFirstSelectedOption().getText() == "฿0");
        //} while (deductList.getFirstSelectedOption().getText() == "฿0");


        deductible = cnvCurrency2Int(deductList.getFirstSelectedOption().getText());
        actualMaxSumInsured = cnvCurrency2Int(grabHomePage.lblSumInsure.getText());
        actualPremiumBeforeDiscount = cnvCurrency2Int(grabHomePage.lblPolicyPrice.getText());

        System.out.println("Deductible = " + deductible);
        System.out.println("Max Suminsure = : " + actualMaxSumInsured);
        System.out.println("Premium : " + actualPremiumBeforeDiscount);

        recordTest();

    }

    @And("^Compare grabpricing with ([^\"]*), ([^\"]*) , ([^\"]*) , ([^\"]*) , ([^\"]*) and ([^\"]*)$")
    public void compareGrabpricingWithPolicytypeMininsuredMaxinsuredDeductiblePremiumbeforediscountAndFreshclaim(int policyType, int minInsure, int maxInsure, int deductibal, int premiumBeforDiscount, int freshclaim) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        Select deductList = new Select(grabHomePage.deductibleList);
        Actions actions = new Actions(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 10);

        waiter.until(ExpectedConditions.elementToBeClickable(grabHomePage.deductibleList));

        String cnvPolicyPricing;
        String cnvSumInsure = cnvCurrency2Int(grabHomePage.lblSumInsure.getText());


        do {
            actions.moveToElement(grabHomePage.deductibleList);
            actions.perform();
            waiter.until(ExpectedConditions.elementToBeClickable(grabHomePage.deductibleList)).click();
            deductList.selectByIndex(0);
        } while (grabHomePage.deductibleList.getText().trim() == "฿0");


        if (policyType == 1) {
            waiter.until(ExpectedConditions.elementToBeClickable(grabHomePage.btnReduceSumInsure));
            actions.moveToElement(grabHomePage.btnReduceSumInsure);
            actions.perform();

            if (Integer.parseInt(cnvSumInsure) > maxInsure) {
                do {
                    grabHomePage.btnReduceSumInsure.click();

                    cnvSumInsure = cnvCurrency2Int(grabHomePage.lblSumInsure.getText());
                } while (Integer.parseInt(cnvSumInsure) > maxInsure);
            }
        }


        cnvPolicyPricing = cnvCurrency2Int(grabHomePage.lblPolicyPrice.getText());


        //Assert

        //Assert.assertTrue(comparePrice(cnvPolicyPricing, premiumBeforDiscount));

        System.out.print("Price on Web is " + cnvPolicyPricing + " And Reference price  is " + premiumBeforDiscount);

    }


    private String cnvCurrency2Int(String inputStr) {

        String tmp;


        tmp = inputStr.substring(1, inputStr.length());
        tmp = tmp.replace(",", "");


        return tmp;

    }

    private boolean comparePrice(int priceFromWeb, int priceFromRef) {
        boolean resultOutput = false;

        if ((priceFromWeb == priceFromRef) || (priceFromWeb - priceFromRef) <= 2 || (priceFromRef - priceFromWeb) <= 2) {
            resultOutput = true;
        }
        return resultOutput;
    }


    public Connection OraConn() {


        try (
                Connection conn = DriverManager.getConnection(url, user, password)) {

            if (conn != null) {
                System.out.println("Connected to the database!");

                return conn;
            } else {
                System.out.println("Failed to make connection!");
                return null;
            }


        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    @And("^I get for max insured for this car ([^\"]*) ,([^\"]*) ,([^\"]*) and ([^\"]*)$")
    public void iGetForMaxInsuredForThisCarCarmakeCaryearCarmodelAndSubmodel(String inCarMake, int inYear, String inCarModel, String inCarSubModel) {

        //int strMaxInsure = getMaxSumInsure(inCarMake.toUpperCase(), inYear, inCarModel.toUpperCase(), inCarSubModel);

        recordTest();

        // System.out.print("Max : " + strMaxInsure);
    }


    public String getMaxSumInsure(String inMotorMake, int inYear, String inMotorModel, String inMotorSubModel) {
        String responseMaxInsured = "";

        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement("SELECT VEH_MAX_PRICE FROM REDBOOK WHERE MOTOR_MAKE =? AND YEAR_GROUP = ? AND MOTOR_MODEL =?  AND VEH_DESCRIPTION =? AND ROWNUM =1");
            pstmt.setString(1, inMotorMake);
            pstmt.setInt(2, inYear);
            pstmt.setString(3, inMotorModel);
            pstmt.setString(4, inMotorSubModel);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                responseMaxInsured = rs.getString("VEH_MAX_PRICE");
            }
            conn.close();
            return responseMaxInsured;
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());

            return "Data Not Found";
        }
    }

    public void recordTest() {
        int recordCount=0;

        try {
            Connection conn = DriverManager.getConnection(url, user, password);

            recordCount = isRecordExist();

            if (recordCount == 0){
                PreparedStatement pstmt = conn.prepareStatement("INSERT INTO test_grab_sum_insured (MOTOR_MAKE,\n" +
                        "YEAR_GROUP,   \n" +
                        "MOTOR_MODEL ,  \n" +
                        "MOTOR_SUB_MODEL , \n" +
                        "CAMERA_INSTALLED , \n" +
                        "DRIVER_SPECIFIC  , \n" +
                        "DEDUCTIBLE       , \n" +
                        "GRAB_CAR_TYPE     ,  \n" +
                        "POLICY_TYPE     ,  \n" +
                        "PKG_NAME        ,        \n" +
                        "EXPECTED_PREMIUM_BEFORE_DIST,    \n" +
                        "ACTUAL_PREMIUM_BEFORE_DIST,  \n" +
                        "EXPECTED_MAX_SUM_INSURED ,        \n" +
                        "ACTUAL_MAX_SUM_INSURED )          \n" +
                        "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,? )");
                pstmt.setString(1, motorMake);
                pstmt.setString(2, yearGroup);
                pstmt.setString(3, motorModel);
                pstmt.setString(4, motorSubModel);
                pstmt.setString(5, isCamaraInstall);
                pstmt.setString(6, isDriverSpecific);
                pstmt.setString(7, deductible);
                pstmt.setString(8, grabCarType);
                pstmt.setString(9, policyType);
                pstmt.setString(10, packageName);
                pstmt.setString(11, getPremiumBeforeDiscount());
                pstmt.setString(12, actualPremiumBeforeDiscount);
                pstmt.setString(13, expectedMaxSumInsured);
                pstmt.setString(14, actualMaxSumInsured);
                pstmt.execute();
                conn.commit();
            }else if (recordCount == 1){
                PreparedStatement pstmt = conn.prepareStatement("UPDATE TEST_GRAB_SUM_INSURED\n" +
                        "SET GRAB_CAR_TYPE=? ,\n" +
                        "PKG_NAME=? ,\n" +
                        "EXPECTED_PREMIUM_BEFORE_DIST=?,\n" +
                        "ACTUAL_PREMIUM_BEFORE_DIST=?,\n" +
                        "EXPECTED_MAX_SUM_INSURED=?,\n" +
                        "ACTUAL_MAX_SUM_INSURED =?,\n" +
                        "TEST_EXEC_DATE = SYSDATE \n" +
                        "WHERE  MOTOR_MAKE =?\n" +
                        "AND    YEAR_GROUP =?\n" +
                        "AND    MOTOR_MODEL =?\n" +
                        "AND    MOTOR_SUB_MODEL =?\n" +
                        "AND    CAMERA_INSTALLED =?\n" +
                        "AND    DRIVER_SPECIFIC =?\n" +
                        "AND    POLICY_TYPE =?\n" +
                        "AND    DEDUCTIBLE =?");

                pstmt.setString(1, grabCarType);

                pstmt.setString(2, packageName);
                pstmt.setString(3, getPremiumBeforeDiscount());
                pstmt.setString(4, actualPremiumBeforeDiscount);
                pstmt.setString(5, expectedMaxSumInsured);
                pstmt.setString(6, actualMaxSumInsured);

                pstmt.setString(7, motorMake);
                pstmt.setString(8, yearGroup);
                pstmt.setString(9, motorModel);
                pstmt.setString(10, motorSubModel);
                pstmt.setString(11, isCamaraInstall);
                pstmt.setString(12, isDriverSpecific);
                pstmt.setString(13, policyType);
                pstmt.setString(14, deductible);


                System.out.println("Update exist recored");
                pstmt.execute();
                conn.commit();
            }





            conn.close();
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        }
    }

    public int isRecordExist() {
        int recordCount=0;
        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement("SELECT count(*) as cnt from TEST_GRAB_SUM_INSURED\n" +
                                                        "WHERE  MOTOR_MAKE =?\n" +
                                                        "AND YEAR_GROUP =?\n" +
                                                        "AND MOTOR_MODEL =?\n" +
                                                        "AND MOTOR_SUB_MODEL =?\n" +
                                                        "AND CAMERA_INSTALLED =?\n" +
                                                        "AND DRIVER_SPECIFIC =?\n" +
                                                        "AND POLICY_TYPE =?\n" +
                                                        "AND DEDUCTIBLE =?");
            pstmt.setString(1, motorMake);
            pstmt.setString(2, yearGroup);
            pstmt.setString(3, motorModel);
            pstmt.setString(4, motorSubModel);
            pstmt.setString(5, isCamaraInstall);
            pstmt.setString(6, isDriverSpecific);
            pstmt.setString(7, policyType);
            pstmt.setString(8, deductible);


            ResultSet rs = pstmt.executeQuery();


            while (rs.next()) {
                recordCount = rs.getInt("CNT");
            }
            conn.close();
            return recordCount;


        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());

            return -1;
        }
    }


    public String getPremiumBeforeDiscount() {
        String expectPremium = "";
        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement("SELECT PREMIUM_BEFORE_DISCOUNT \n" +
                    "FROM GRAB_PREMIUM \n" +
                    "WHERE  ? BETWEEN MIN_INSURED AND MAX_INSURED \n" +
                    "AND PKG_NAME =  ? \n" +
                    "AND grade = 2 \n" +
                    "AND deductible =? \n" +
                    "AND PREMIUM_BEFORE_DISCOUNT >0");
            pstmt.setInt(1, Integer.parseInt(actualMaxSumInsured));
            pstmt.setString(2, packageName);
            pstmt.setInt(3, Integer.parseInt(deductible));


            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                expectPremium = rs.getString("PREMIUM_BEFORE_DISCOUNT");
            }
            conn.close();

            return expectPremium;

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            return e.getMessage();
        }
    }

    public String getGrabCarType() {
        String carType = "";
        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement("SELECT GRAB_CAR_TYPE \n" +
                    "FROM GRAB_CAR_TYPE\n" +
                    "WHERE MAKER_NAME = ?\n" +
                    "AND MODEL_NAME =?");
            pstmt.setString(1, motorMake.toUpperCase().trim());
            pstmt.setString(2, motorModel.toUpperCase().trim());

            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                carType = rs.getString("GRAB_CAR_TYPE");
            }
            conn.close();

            System.out.println("Grab Car Type : " + carType);
            return carType;
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            return e.getMessage();
        }

    }
}




