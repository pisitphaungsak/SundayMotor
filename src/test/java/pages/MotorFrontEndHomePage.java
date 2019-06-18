package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFrontEndHomePage {

    public MotorFrontEndHomePage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/a[1]")
    public WebElement lblLogin;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[2]/a")
    public WebElement lblUserName;

}
