package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class SundayHomePage {

    public SundayHomePage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[3]/a[2]")
    public WebElement btnLoginPage;

    @FindBy(how = How.XPATH,using = "//button[@class='HomeHeader__checkOurPrices']")
    public WebElement btnOpenCarInsurarancePage;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'pisit.ph@easysunday.com')]")
    public WebElement lblOpenUserProfile;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'single.policy@gmail.com')]")
    public WebElement lblOpenSinglePolicyProfile;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'multiple.policy@gmail.com')]")
    public WebElement lblOpenMultiplePolicyProfile;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'no.policy@gmail.com')]")
    public WebElement lblOpenNoPolicyProfile;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'expire.policy@gmail.com')]")
    public WebElement lblOpenExpirePolicyProfile;

    @FindBy(how = How.XPATH,using = "//a[contains(text(),'cancel.policy@gmail.com')]")
    public WebElement lblOpenCancelPolicyProfile;


    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[11]/div[2]/span")
    public WebElement lblFooterBrokerName;

    //  User Profile editor
    @FindBy(how = How.XPATH,using = "//button[@class='ProfileUser__editIcon']")
    public WebElement btnUserProfileEdit;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div/div[2]/div[1]/div[2]/form/div[1]/div[2]/div[1]/div/input")
    public WebElement txtEditFirstName;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div/div[2]/div[1]/div[2]/form/div[1]/div[2]/div[3]/div/input")
    public WebElement txtEditLastName;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div/div[2]/div[1]/div[2]/form/div[4]/button[2]")
    public WebElement btnSaveUserProfile;

    @FindBy(how = How.XPATH, using = "//div[@class='ProfilePolicyList']")
    public WebElement userPoliciesList;

    @FindBy(how = How.XPATH, using = "//select[@name='province']")
    public WebElement provinceList;

    @FindBy(how = How.XPATH, using = "//select[@name='district']")
    public WebElement districtList;

    @FindBy(how = How.XPATH, using = "//select[@name='subDistrict']")
    public WebElement subDistrictList;







    //div[@class='ProfilePolicyList']

    public void openCarInsurePricePage(){

        btnOpenCarInsurarancePage.click();
    }


    public void selectprofile(String carMake) {
        boolean isFound = false;
        //SundayGrabHomePage grabHomePage = new SundayGrabHomePage(base.Driver);
        List<WebElement> carmakelist = userPoliciesList.findElements(By.tagName("li"));
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
}
