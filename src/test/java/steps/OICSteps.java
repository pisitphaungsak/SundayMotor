package steps;

import base.BaseUtil;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.util.ArrayList;
import java.util.List;

public class OICSteps extends BaseUtil {
    private BaseUtil base;

    public OICSteps(BaseUtil base) {
        this.base = base;
    }

    @Given("^I navigate to Easy Sunday login page$")
    public void iNavigateToEasySundayLoginPage() {
        System.out.println("step 1");
    }

    @And("^I enter the username as admin and password as admin$")
    public void iEnterTheUsernameAsAdminAndPasswordAsAdmin() {
        System.out.println("step 2");
    }

    @And("^I click login button$")
    public void iClickLoginButton() {
        System.out.println("step 3");
    }

    @Then("^I should see the home page\\.$")
    public void iShouldSeeTheHomePage() {
        System.out.println("step 4");
    }



    @And("^I input for validate policies price with below data$")
    public void iInputForValidatePoliciesPriceWithBelowData(DataTable table) {

        List<InputParamOIC> inputData = new ArrayList<InputParamOIC>();

        inputData = table.asList(InputParamOIC.class);

            for (InputParamOIC inputParamOIC : inputData){

                System.out.println("Sell Net : " + inputParamOIC.sellnet);
            }

    }

    @Then("^I got response code is OK$")
    public void iGotResponseCodeIsOK() {
        System.out.println("step 3");
    }




    @Given("^I navigate to the login page$")
    public void iNavigateToTheLoginPage() {

    }

    @Given("^input <sellnet>$")
    public void inputSellnet() {
    }


    public class InputParamOIC{

        public double sellnet;
        public String policytype;
        public String carcode;
        public double carsize;
        public int driverage;
        public int carage;
        public double suminsured;
        public int cargroup;
        public int injurytpperson;
        public int injurytptime;
        public int injurytpdamage;
        public int seat;
        public int lifeloss;
        public int medical;
        public int bailbond;
        public int deductible;


        public InputParamOIC(double sellnet, String policytype, String carcode, double carsize, int driverage, int carage, double suminsured, int cargroup, int injurytpperson, int injurytptime, int injurytpdamage, int seat, int coverageLifeloss, int coveragemedical, int coveragebailbond, int deductible) {
            this.sellnet = sellnet;
            this.policytype = policytype;
            this.carcode = carcode;
            this.carsize = carsize;
            this.driverage = driverage;
            this.carage = carage;
            this.suminsured = suminsured;
            this.cargroup = cargroup;
            this.injurytpperson = injurytpperson;
            this.injurytptime = injurytptime;
            this.injurytpdamage = injurytpdamage;
            this.seat = seat;
            this.lifeloss = coverageLifeloss;
            this.medical = coveragemedical;
            this.bailbond = coveragebailbond;
            this.deductible = deductible;
        }






    }
}
