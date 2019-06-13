package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

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


    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div[11]/div[2]/span")
    public WebElement lblFooterBrokerName;


    public void openCarInsurePricePage(){

        btnOpenCarInsurarancePage.click();
    }
}
