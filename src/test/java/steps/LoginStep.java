package steps;

import base.BaseWebUI;
import com.test.ui.BaseUI;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.util.ArrayList;
import java.util.List;


public class LoginStep extends BaseWebUI {

    private BaseWebUI base;

    public LoginStep(BaseWebUI base) {
        this.base = base;
    }

    @Given("^I nevigate to easysunday home page$")
    public void iNevigateToEasysundayHomePage() {

        System.out.println("Driver is " + base.StepInfo);
    }

    @And("^I enter the following for login$")
    public void iEnterTheFollowingForLogin(DataTable table) {

        List<User> users = new ArrayList<User>();

        users = table.asList(User.class);

        for (User user : users) {

            System.out.println("User = " + user.username);
            System.out.println("Password = " + user.password);
        }

    }

    @And("^I open sunday login page$")
    public void iOpenSundayLoginPage() {

    }

    @And("^I click login button$")
    public void iClickLoginButton() {
    }

    @Then("^I should see my name on top rignt of page$")
    public void iShouldSeeMyNameOnTopRigntOfPage() {
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
