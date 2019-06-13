package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class SundayLoginPage {

    public SundayLoginPage(WebDriver driver) {
        PageFactory.initElements(driver,this);
    }

    @FindBy(how = How.NAME, using = "username")
    public WebElement txtUserName;

    @FindBy(how = How.NAME, using = "password")
    public WebElement txtPassword;

    @FindBy(how = How.XPATH,using = "//*[@id=\"root\"]/div/div[5]/div[2]/div/form/button")
    public WebElement btnLogin;


    public void inputUserNamePassword(String userName, String passWord){
        txtUserName.sendKeys(userName);
        txtPassword.sendKeys(passWord);
    }

    public void btnLogin_click(){
        btnLogin.submit();

    }

}
