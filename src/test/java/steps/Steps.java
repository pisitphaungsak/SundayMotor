package steps;

import base.BaseWebUI;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pages.SundayHomePage;
import pages.SundayLoginPage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;


public class Steps extends BaseWebUI {

    private BaseWebUI base;

    //private SundayLoginPage loginPage2 = new SundayLoginPage(base.Driver);

    public Steps(BaseWebUI base) {
        this.base = base;
    }

    @Given("^I nevigate to easysunday home page$")
    public void iNevigateToEasysundayHomePage() {

        base.Driver.navigate().to("https://easysunday.com/");
        base.Driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        base.Driver.manage().window().maximize();


    }

    @And("^I enter the following for login$")
    public void iEnterTheFollowingForLogin(DataTable table) {
        SundayLoginPage loginPage = new SundayLoginPage(base.Driver);
        List<User> users = new ArrayList<User>();

        users = table.asList(User.class);
        for (User user : users) {
            loginPage.inputUserNamePassword(user.username,user.password);
        }
    }

    @And("^I open sunday login page$")
    public void iOpenSundayLoginPage() {
        base.Driver.navigate().to(base.baseURL);
        base.Driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        base.Driver.manage().window().maximize();
        SundayHomePage sundayHome = new SundayHomePage(base.Driver);
        sundayHome.btnLoginPage.click();

    }

    @And("^I click login button$")
    public void iClickLoginButton() {
        SundayLoginPage loginPage = new SundayLoginPage(base.Driver);
        loginPage.btnLogin_click();
    }

    @Then("^I should see my name on top right of page$")
    public void iShouldSeeMyNameOnTopRigntOfPage() {

    }

    @And("^I open get car insurance price$")
    public void iOpenGetCarInsurencePrice() {
        SundayHomePage sundayHome = new SundayHomePage(base.Driver);
        sundayHome.openCarInsurePricePage();

    }

    @And("^I open user profile page$")
    public void iOpenUserProfilePage() {
        SundayHomePage sundayHome = new SundayHomePage(base.Driver);
        WebDriverWait waiter = new WebDriverWait(base.Driver, 5);

        waiter.until(ExpectedConditions.elementToBeClickable(sundayHome.lblOpenUserProfile));

        sundayHome.lblOpenUserProfile.click();
    }

    @When("^I scholl down to buttom of page$")
    public void iSchollDownToButtomOfPage() {
        SundayHomePage sundayHome = new SundayHomePage(base.Driver);
        Actions actions = new Actions(base.Driver);
        actions.moveToElement(sundayHome.lblFooterBrokerName);
        actions.perform();

    }

    public class User {
        public String username;
        public String password;

        public User(String userName, String passWord) {
            username = userName;
            password = passWord;
        }
    }


}