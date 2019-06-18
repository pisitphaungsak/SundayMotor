package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class UserProfileMotor {

    public UserProfileMotor(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[2]/div/div/div/div[2]/div[1]/div[2]/div/p")
    public WebElement btnOpenChangePassword;

    //ChangePassword box

    @FindBy(how = How.XPATH, using = "//*[@id=\"rcDialogTitle0\"]")
    public WebElement lblTitleMyPassword;

    @FindBy(how = How.ID, using = "my_new_password_current")
    public WebElement txtCurrentPassword;

    @FindBy(how = How.ID, using = "my_new_password_newPassword")
    public WebElement txtNewPassword;


    @FindBy(how = How.ID, using = "my_new_password_confirm")
    public WebElement txtNewPasswordConfirm;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div[2]/div[3]/div/button[1]")
    public WebElement btnCancelChangePassword;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div[2]/div[3]/div/button[2]")
    public WebElement btnOKChangePassword;








}
