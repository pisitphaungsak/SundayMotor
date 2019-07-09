package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFrontEndCTPPage {

    public MotorFrontEndCTPPage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[1]")
    public WebElement lblCarplateTitle;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[2]/div[1]")
    public WebElement btnPlateWhite;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[2]/div[2]")
    public WebElement btnPlateYellow;




    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[3]/div[1]")
    public WebElement lblContactTitle;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[3]/div[2]/a[1]")
    public WebElement lblContactPhoneNumber;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[3]/div[2]/a[2]")
    public WebElement lblContactLine;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/div[3]/div[2]/a[3]")
    public WebElement lblContactEmail;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/section/div[2]/a/button")
    public WebElement  btnCarPlateOK;


}
