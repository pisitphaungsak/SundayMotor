package steps;

import base.BaseWebUI;
import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import pages.MotorFrontEndLoginPage;
import pages.MotorFrontEndHomePage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class MotorFrontEndSteps extends BaseWebUI {

    private BaseWebUI base;


    public MotorFrontEndSteps(BaseWebUI base) {

        this.base = base;

    }


    @Given("^Open Motor Front End Home Page Without user login$")
    public void openMotorFrontEndHomePage() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        base.Driver.navigate().to(base.motorBaseURL);
        base.Driver.manage().window().maximize();
        base.Driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @And("^I enter the following for Motor FE login$")
    public void iEnterTheFollowingForMotorFELogin(DataTable table) throws InterruptedException {

        MotorFrontEndLoginPage loginPage = new MotorFrontEndLoginPage(base.Driver);
        List<Steps.User> users = new ArrayList<Steps.User>();

        users = table.asList(Steps.User.class);
        for (Steps.User user : users) {
            loginPage.inputUserNamePassword(user.username, user.password);
        }

        Thread.sleep(2000);
    }

    @And("^I click login button for Motor FE$")
    public void iClickLoginButtonForMotorFE() {
        MotorFrontEndLoginPage loginPage = new MotorFrontEndLoginPage(base.Driver);
        loginPage.btnLogin.click();
    }

    @Given("^Login to Motor FE with below user$")
    public void loginToMotorFEWithBelowUser(DataTable table) {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        MotorFrontEndLoginPage loginPage = new MotorFrontEndLoginPage(base.Driver);

        base.Driver.navigate().to(base.motorBaseURL);
        base.Driver.manage().window().maximize();
        base.Driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

        FEHome.lblLogin.click();

        List<Steps.User> users = new ArrayList<Steps.User>();

        users = table.asList(Steps.User.class);
        for (Steps.User user : users) {
            loginPage.inputUserNamePassword(user.username, user.password);

        }

        loginPage.btnLogin.click();
    }

    @When("^login success I will see \"([^\"]*)\" as login user name$")
    public void loginSuccessIWillSeeAsLoginUserName(String userName) throws Throwable {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);

        //Assert
        Assert.assertEquals(FEHome.lblUserName.getText(), userName);

    }

    @And("^Open Motor Frontend login page$")
    public void openMotorFrontendLoginPage() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.lblLogin.click();
    }

    @And("^click on user name$")
    public void clickOnUserName() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.lblUserName.click();

    }


    @Then("^validate top thai menu with this data \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" ,\"([^\"]*)\" and \"([^\"]*)\"$")
    public void validateTopThaiMenuWithTnisDataAnd(String menu1, String menu2, String menu3, String menu4, String menu5, String menu6) {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);

        Assert.assertEquals(menu1, FEHome.lnkHomeTop.getText());
        Assert.assertEquals(menu2, FEHome.lnkFAQTop.getText());
        Assert.assertEquals(menu3, FEHome.lnkClaimsTop.getText());
        Assert.assertEquals(menu4, FEHome.lnkHistoryTop.getText());
        Assert.assertEquals(menu5, FEHome.lnkblogTop.getText());
        Assert.assertEquals(menu6, FEHome.lnklogoutTop.getText());


    }

    @When("^I change to english language$")
    public void iChangeToEnglishLanglauge() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.lblChangeToEnglishTop.click();

    }

    @Then("^validate top english menu with this data \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" ,\"([^\"]*)\" and \"([^\"]*)\"$")
    public void validateTopEnglishMenuWithThisDataAnd(String menu1, String menu2, String menu3, String menu4, String menu5, String menu6) throws Throwable {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        Assert.assertEquals(menu1, FEHome.lnkHomeTop.getText());
        Assert.assertEquals(menu2, FEHome.lnkFAQTop.getText());
        Assert.assertEquals(menu3, FEHome.lnkClaimsTop.getText());
        Assert.assertEquals(menu4, FEHome.lnkHistoryTop.getText());
        Assert.assertEquals(menu5, FEHome.lnkblogTop.getText());
        Assert.assertEquals(menu6, FEHome.lnklogoutTop.getText());
    }

    @When("^I click the menu icon for open left menu$")
    public void iClickTheMenuIconForOpenLeftMenu() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.btnLettMenu.click();
    }

    @And("^I sign up a user with Google$")
    public void iSignUpAUserWithGoogle() throws InterruptedException {
        MotorFrontEndLoginPage FELogin = new MotorFrontEndLoginPage(base.Driver);

        FELogin.btnsignUpWithGoogle.click();

        Thread.sleep(5000);
    }

    @Given("^Login to google with below user$")
    public void loginToGoogleWithBelowUser(DataTable table) {
        base.Driver.navigate().to("https://accounts.google.com/AccountChooser?service=mail&continue=https://mail.google.com/mail/");
        base.Driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

        WebDriverWait waiter = new WebDriverWait(base.Driver, 10);


        WebElement txtEmail = base.Driver.findElement(By.xpath("//*[@id=\"identifierId\"]"));

        WebElement btnNext = base.Driver.findElement(By.xpath("//div[@class='ZFr60d CeoRYc']"));

        WebElement txtPassword = base.Driver.findElement(By.name("password"));

        waiter.until(ExpectedConditions.elementToBeClickable(txtEmail));

        txtEmail.sendKeys("test1998.profiles@gmail.com");
        btnNext.click();

        txtPassword.sendKeys("GM3in@B*");


    }

    @Then("^validate left thai menu with out user login with this data \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" , \"([^\"]*)\" ,\"([^\"]*)\" and \"([^\"]*)\"$")
    public void validateLeftThaiMenuWithOutUserLoginWithThisDataAnd(String menu1, String menu2, String menu3, String menu4, String menu5, String menu6) throws Throwable {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        Assert.assertEquals(menu1, FEHome.lnkHomeLeft.getText());
        Assert.assertEquals(menu2, FEHome.lnkFAQLeft.getText());
        Assert.assertEquals(menu3, FEHome.lnkClaimsLeft.getText());
        Assert.assertEquals(menu4, FEHome.lnkHistoryLeft.getText());
        Assert.assertEquals(menu5, FEHome.lnkblogLeft.getText());
        Assert.assertEquals(menu6, FEHome.lnkLoginSundayLeft.getText());

    }

    @And("^I click \"([^\"]*)\" lable on top menu for switch langluage$")
    public void iClickLableOnTopMenuForSwitchLangluage(String arg0) throws InterruptedException {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 10);
        Actions actions = new Actions(base.Driver);
        waiter.until(ExpectedConditions.elementToBeClickable(FEHome.btnEnglishTop));


        do {
            actions.moveToElement(FEHome.btnEnglishTop).click();
            actions.perform();
        } while (FEHome.lnkHomeTop.getText() == "Home");


    }

    @And("^I click \"([^\"]*)\" lable on left menu for switch langluage$")
    public void iClickLableOnLeftMenuForSwitchLangluage(String arg0) {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.btnEnglishLeft.click();
    }

    @When("^I click FAQ menu$")
    public void iClickFAQMenu() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.lnkFAQTop.click();
    }

    @Then("^Redirect to Motor Front End login page$")
    public void redirectToMotorFrontEndLoginPage() {
        MotorFrontEndLoginPage loginPage = new MotorFrontEndLoginPage(base.Driver);

        //Assert
        Assert.assertTrue(loginPage.txtUserName.isDisplayed());
        Assert.assertTrue(loginPage.txtPassword.isDisplayed());
    }

    @Then("^auto redirect to FAQ page$")
    public void autoRedirectToFAQPage() {
        String currentAddress;
        String expectedKeyword ="faq";

        currentAddress = base.Driver.getCurrentUrl().toString();

        System.out.print(currentAddress);
        //Assert.assertTrue(currentAddress.contains(expectedKeyword));


    }
}