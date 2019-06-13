package steps.oic;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import java.util.HashMap;


public class OCIPriceCalculationSteps {
    @Given("^I assign path parameters for calling the OIC API with these parameters$")
    public void iAssignPathParametersForCallingTheOICAPIWithTheseParameters(DataTable table) {
        var data = table.raw();

        //set body


        HashMap<String, String> pathParam = new HashMap<>();
        pathParam.put("sellNet"         , "53673.34");
        pathParam.put("policyType"      , "v1");
        pathParam.put("carCode"         , "110");
        pathParam.put("engineSize"      , "1995");
        pathParam.put("driverAge"       , "0");
        pathParam.put("carAge"          , "3");
        pathParam.put("sumInsured"      , "2600000");
        pathParam.put("carGroup"        , "2");
        pathParam.put("injuryTPPerson"  , "1000000");
        pathParam.put("injuryTPTime"    , "10000000");
        pathParam.put("injuryTPDamage"  , "2500000");
        pathParam.put("seat"            , "7");
        pathParam.put("coverageLifeloss", "200000");
        pathParam.put("coverageMedical" , "200000");
        pathParam.put("coverageBailbond", "300000");
        pathParam.put("deductible"      , "0");




    }




    @And("^The return base price of policy type one is in range$")
    public void theReturnBasePriceOfPolicyTypeOneIsInRange() {
    }



    @And("^The return policy status is invalid$")
    public void theReturnPolicyStatusIsInvalid() {
    }
}
