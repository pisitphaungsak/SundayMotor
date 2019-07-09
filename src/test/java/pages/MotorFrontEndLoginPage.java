package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFrontEndLoginPage {

    public MotorFrontEndLoginPage(WebDriver driver) {
        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.XPATH, using = "//*[@id=\"normal_login_userName\"]")
    public WebElement txtUserName;

    @FindBy(how = How.XPATH, using = "//*[@id=\"normal_login_password\"]")
    public WebElement txtPassword;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/section/main/div/section/div/form/div[3]/div/div/span/button")
    public WebElement btnLogin;


    @FindBy(how = How.XPATH,using = "//div[@class='Login__error']")
    public WebElement lblErrorMsg;

    @FindBy(how = How.XPATH,using = "//button[@class='ant-btn Login__form__button']")
    public WebElement btnsignUpWithGoogle;



    public void inputUserNamePassword(String userName, String passWord){
        txtUserName.sendKeys(userName);
        txtPassword.sendKeys(passWord);
    }

    public void btnLogin_click(){
        btnLogin.submit();

    }
}
