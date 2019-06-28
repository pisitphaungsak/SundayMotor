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


}
