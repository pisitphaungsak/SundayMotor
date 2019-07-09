package steps;

import base.BaseWebUI;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FileUtils;
import org.testng.Assert;
import pages.MotorFrontEndCTPPage;

public class MotorFrontEndCTPSteps extends BaseWebUI {

    private BaseWebUI base;

    private static String plateSelected ="";

    public MotorFrontEndCTPSteps(BaseWebUI base) {

        this.base = base;

    }



    @Given("^Open Motor FE CTP car plate with this resolution \"([^\"]*)\" x \"([^\"]*)\"$")
    public void openMotorFECTPCarPlateWithThisResolutionX(int width, int height) throws Throwable {
        String carPlateURL = motorBaseURL + "/th/ctp/car-plate";

        Dimension dim = new Dimension(width,height);


        base.Driver.navigate().to(carPlateURL);
        //base.Driver.manage().window().maximize();
        base.Driver.manage().window().setSize(dim);
        base.Driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

        base.screenCapture(base.Driver,"/Users/pisit.ph/works/output/","test2.png");
    }

    @When("^I select \"([^\"]*)\" plate$")
    public void iSelectPlate(String plateColor) throws Throwable {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);
            plateSelected = plateColor;
        if (plateColor.equals("yellow")){

            pageCTP.btnPlateYellow.click();

        } else if (plateColor.equals("white")){
            pageCTP.btnPlateWhite.click();
        }
    }

    @Then("^Background color of button will change to color \"([^\"]*)\"$")
    public void backgroundColorOfButtonWillChangeToColor(String arg0) throws Throwable {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);
        String expectedValue = arg0;

        String actualValue = pageCTP.btnPlateYellow.getCssValue("background-color");

        Assert.assertEquals(expectedValue,actualValue);




    }

    @Then("^Sunday contact information will displayed$")
    public void sundayContactInfomationWillDisplayed() throws InterruptedException {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);

        Thread.sleep(1000);
        Assert.assertTrue(pageCTP.lblContactTitle.isDisplayed());
        Assert.assertTrue(pageCTP.lblContactPhoneNumber.isDisplayed());
        Assert.assertTrue(pageCTP.lblContactLine.isDisplayed());
        Assert.assertTrue(pageCTP.lblContactEmail.isDisplayed());


    }

    @And("^Sunday contact information are Tel\\. number \"([^\"]*)\" , Line  \"([^\"]*)\" and Email \"([^\"]*)\"$")
    public void sundayContactInformationAreTelNumberLineAndEmail(String inTelNumber, String inLine, String inEmail) throws Throwable {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);

        Assert.assertEquals(inTelNumber,pageCTP.lblContactPhoneNumber.getText());
        Assert.assertEquals(inLine,pageCTP.lblContactLine.getText());
        Assert.assertEquals(inEmail,pageCTP.lblContactEmail.getText());

    }

    @Then("^Validate Okey button is displayed$")
    public void validateOkeyButtonIsDisplayed() {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);
        Assert.assertTrue(pageCTP.btnCarPlateOK.isDisplayed());

    }

    @And("^Validate Okey button is enabled$")
    public void validateOkeyButtonIsEnabled() {
        MotorFrontEndCTPPage pageCTP = new MotorFrontEndCTPPage(base.Driver);
        Assert.assertTrue(pageCTP.btnCarPlateOK.isEnabled());
    }
}
