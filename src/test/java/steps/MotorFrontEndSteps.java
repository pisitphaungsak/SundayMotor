package steps;

import base.BaseWebUI;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
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


    @Given("^Open Motor Front End Home Page$")
    public void openMotorFrontEndHomePage() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        base.Driver.navigate().to(base.motorBaseURL);
        base.Driver.manage().window().maximize();
        base.Driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @And("^I enter the following for Motor FE login$")
    public void iEnterTheFollowingForMotorFELogin(DataTable table) {

        MotorFrontEndLoginPage loginPage = new MotorFrontEndLoginPage(base.Driver);

        List<Steps.User> users = new ArrayList<Steps.User>();

        users = table.asList(Steps.User.class);
        for (Steps.User user : users) {
            loginPage.inputUserNamePassword(user.username, user.password);
        }
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
        Assert.assertEquals(FEHome.lblUserName.getText(),userName);

    }

    @And("^Open Motor Frontend login page$")
    public void openMotorFrontendLoginPage() {
        MotorFrontEndHomePage FEHome = new MotorFrontEndHomePage(base.Driver);
        FEHome.lblLogin.click();
    }
}
