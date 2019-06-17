package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class SundayGrabHomePage {

    public SundayGrabHomePage(WebDriver driver) {
        PageFactory.initElements(driver, this);

    }

    @FindBy(how = How.XPATH, using = "//div[@class='Layout__rightMenu']//a[@class='Layout__link hide-mobile hide-tablet']")
    public WebElement lblLoginPage;

    @FindBy(how = How.XPATH, using = "//button[@class='HomeHeader__checkOurPrices']")
    public WebElement btnCheckPrice;

    // Items List
    @FindBy(how = How.XPATH, using = "//div[@class='CarSelectionItemListing']//ul[@class='item-list']")
    public WebElement carMakeList;

    @FindBy(how = How.XPATH, using = "//div[@class='BasicInfoCarYear']//div[@class='content']//div//ul[@class='item-list']")
    public WebElement carYearList;

    @FindBy(how = How.XPATH, using = "//div[@class='BasicInfoCarModel']//div[@class='content']//div//ul[@class='item-list']")
    public WebElement carModelList;

    @FindBy(how = How.XPATH, using = "//div[@class='BasicInfoCarTrim']//div[@class='content']//div//ul[@class='item-list']")
    public WebElement carSubModelList;

    // Car summary Page
    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[6]/div[1]/div[1]/span[2]")
    public WebElement lblSummaryBrand;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[6]/div[1]/div[2]/span[2]")
    public WebElement lblSummaryYear;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[6]/div[1]/div[3]/span[2]")
    public WebElement lblSummaryModel;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[6]/div[1]/div[4]/span[2]")
    public WebElement lblSummarySubModel;

    @FindBy(how = How.XPATH, using = "//div[@class='GoToCarPlateButton']//a")
    public WebElement btnConfirmSummary;

    //Camera
    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/form/div[1]/div[1]")
    public WebElement btncameraInstalled;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/form/div[1]/div[2]")
    public WebElement btncameraNotInstalled;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/form/div[2]/div[2]/button")
    public WebElement btnCameraNext;

    //Specify Driver
    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/form/div/div[2]/button[1]")
    public WebElement btnNotSpecifyDriver;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/form/div/div[2]/button[2]")
    public WebElement btnSpecifyDriver;

    @FindBy(how = How.XPATH,using = "//button[@class='BasicInfoSpecifyDriver__nextButton']")
    public WebElement btnSpecifyDriverNext;










    public void selectCarBrandCarmake(String carMake) {
        boolean isFound = false;
        //SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        List<WebElement> carmakelist = carMakeList.findElements(By.tagName("li"));
        for (WebElement li : carmakelist) {

            if (li.getText().equals(carMake)) {
                isFound = true;
                li.click();
            }
        }
        if (isFound == false) {
            System.out.println("Car Make : " + carMake + " not found !!");
        }
    }

    public void selectCarYearCaryear(String carYear) {
        boolean isFound = false;


        List<WebElement> carmakelist = carYearList.findElements(By.tagName("li"));
        for (WebElement li : carmakelist) {

            if (li.getText().equals(carYear)) {
                isFound = true;
                li.click();
            }
        }
        if (isFound == false) {
            System.out.println("Car Year : " + carYear + " not found !!");
        }
    }

    public void selectCarModelCarmodel(String carmodel) {
        boolean isFound = false;
        List<WebElement> carmodellist = carModelList.findElements(By.tagName("li"));
        for (WebElement li : carmodellist) {
            if (li.getText().equals(carmodel)) {
                isFound = true;
                li.click();
            }
        }
        if (isFound == false) {
            System.out.println("Car Model : " + carmodel + " not found !!");
        }
    }

    public void selectCarSubModelSubmodel(String submodel) {
        boolean isFound = false;
        List<WebElement> carsubmodellist = carSubModelList.findElements(By.tagName("li"));
        for (WebElement li : carsubmodellist) {
            if (li.getText().equals(submodel)) {
                isFound = true;
                li.click();
            }
        }
        if (isFound == false) {
            System.out.println("Car Sub-Model : " + submodel + " not found !!");
        }
    }
}
