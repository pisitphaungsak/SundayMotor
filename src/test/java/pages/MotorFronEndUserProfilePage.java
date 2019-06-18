package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFronEndUserProfilePage {

    public MotorFronEndUserProfilePage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[2]/div/div/div/div[2]/div[1]/div[2]/div/p")
    public WebElement btnChangePassword;

}
