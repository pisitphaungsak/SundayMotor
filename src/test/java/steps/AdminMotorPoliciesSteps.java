package steps;

import base.BaseWebUI;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pages.SundayAdminPage;

import java.util.concurrent.TimeUnit;


public class AdminMotorPoliciesSteps extends BaseWebUI {

    private BaseWebUI base;


    public AdminMotorPoliciesSteps(BaseWebUI base) {

        this.base = base;

    }

    @Given("^Open Sunday Admin page$")
    public void openSundayAdminPage() {
        base.Driver.navigate().to(adnminBaseURL);
        base.Driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        base.Driver.manage().window().maximize();
    }

    @And("^Login to the Admin page$")
    public void loginToTheAdminPage() {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        adminPage.inputAdminLoginInfo(testUserName, testPassword);
        adminPage.btnAdminLogin_click();
    }

    @And("^Open Motor Policies menu$")
    public void openAllMotorPoliciesMenu() throws InterruptedException {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 5);
        adminPage.openSideMenu();

        waiter.until(ExpectedConditions.elementToBeClickable(adminPage.subMenuMotorPolicies));
        adminPage.subMenuMotorPolicies.click();
        adminPage.dummy.click();

    }

    @When("^I open All Motor  Policies sub menu$")
    public void iOpenAllMotorPoliciesSubMenu() {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        adminPage.btnSubMenuMotorPolicies_allMotorPolicies.click();

    }

    @Given("^Open Motor Policies Admin Page$")
    public void openAdminPage() {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 5);

        adminPage.inputAdminLoginInfo(testUserName, testPassword);
        adminPage.btnAdminLogin_click();

        adminPage.openSideMenu();

        waiter.until(ExpectedConditions.elementToBeClickable(adminPage.subMenuMotorPolicies));
        adminPage.subMenuMotorPolicies.click();
        adminPage.dummy.click();




    }

    @And("^I enter into ALL MOTOR POLICIES$")
    public void iEnterIntoALLMOTORPOLICIES() {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        adminPage.btnSubMenuMotorPolicies_allMotorPolicies.click();
    }

    @And("^I open Search Policies window$")
    public void iOpenSearchPoliciesWindow() {
        SundayAdminPage adminPage = new SundayAdminPage(base.Driver);
        adminPage.btnSearchMotorPolicies.click();


    }
}
