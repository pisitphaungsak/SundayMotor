package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFrontEndUserProfilePage {

    public MotorFrontEndUserProfilePage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//p[@class='MyPassword__label']")
    public WebElement btnChangePassword;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div/div/div[2]/div[2]/div/div/div/a/div")
    public WebElement btnFirstPolicy;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/section[1]/div[1]/div[1]/div[2]/div[1]/b[1]/i[1]/*")
    public WebElement btnEditUserProfile;



}
