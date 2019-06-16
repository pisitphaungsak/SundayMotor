package steps;

import base.BaseWebUI;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import pages.SundayGrabHomePage;

import java.util.List;
import java.util.concurrent.TimeUnit;

public class GrabSteps extends BaseWebUI {

    public GrabSteps(BaseWebUI base) {
        this.base = base;
    }

    private BaseWebUI base;

    @Given("^Open Sunday Grab Home Page$")
    public void openSundayGrabHomePage() {
        base.Driver.navigate().to(base.grabHomePage_prod);
        base.Driver.manage().window().maximize();
        base.Driver.manage().timeouts().implicitlyWait(10000, TimeUnit.MILLISECONDS);
    }

    @And("^Open Check policy pricing for grab car$")
    public void openCheckPolicyPricingForGrabCar() {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        grabHomePage.btnCheckPrice.click();
    }


    @And("^Select car brand \"([^\"]*)\"$")
    public void selectCarBrand(String carMake) {
        boolean isFound = false;
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        List<WebElement> carMakeList = grabHomePage.carMakeList.findElements(By.tagName("li"));
        for (WebElement li : carMakeList) {

            if (li.getText().equals(carMake)) {
                isFound = true;
                li.click();
            }
        }

        if (isFound == false) {
            System.out.println("Car Make : " + carMake + " not found !!");
        }
    }

    @And("^Select car year \"([^\"]*)\"$")
    public void selectCarYear(String carYear) {
        boolean isFound = false;
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);

        List<WebElement> carMakeList = grabHomePage.carYearList.findElements(By.tagName("li"));
        for (WebElement li : carMakeList) {

            if (li.getText().equals(carYear)) {
                isFound = true;
                li.click();
            }
        }

        if (isFound == false) {
            System.out.println("Car Year : " + carYear + " not found !!");
        }

    }

    @And("^Select car model \"([^\"]*)\"$")
    public void selectCarModel(String carModel) {
        boolean isFound = false;
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);

        List<WebElement> carMakeList = grabHomePage.carModelList.findElements(By.tagName("li"));
        for (WebElement li : carMakeList) {

            if (li.getText().equals(carModel)) {
                isFound = true;
                li.click();
            }
        }
        if (isFound == false) {
            System.out.println("Car Model : " + carModel + " not found !!");
        }
    }

    @And("^Select car sub-model \"([^\"]*)\"$")
    public void selectCarSubModel(String carSubModel) {
        boolean isFound = false;
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);

        List<WebElement> carMakeList = grabHomePage.carSubModelList.findElements(By.tagName("li"));
        for (WebElement li : carMakeList) {

            if (li.getText().equals(carSubModel)) {
                isFound = true;
                li.click();
            }
        }

        if (isFound == false) {
            System.out.println("Car Sub-Model : " + carSubModel + " not found !!");
        }
    }

    @And("^I select car with ([^\"]*) , ([^\"]*) , ([^\"]*) and ([^\"]*)$")
    public void iSelectCarWithCarmakeCaryearModelAndSubmodel(String carMake, String carYear, String carModel, String carSubModl) {
        SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
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
        grabHomePage.btnConfirmSummary.click();

    }
}
