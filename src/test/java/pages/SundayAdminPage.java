package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SundayAdminPage {

    public SundayAdminPage(WebDriver driver) {
        PageFactory.initElements(driver, this);

    }


    @FindBy(how = How.XPATH, using = "//input[@id='textfield-Email']")
    public WebElement txtAdminEmail;

    @FindBy(how = How.XPATH, using = "//input[@id='textfield-Password']")
    public WebElement txtAdminPassword;

    @FindBy(how = How.XPATH, using = "//button[@class='mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--primary']//span[@class='mdl-button__ripple-container']")
    public WebElement btnAdminLogin;

    @FindBy(how = How.XPATH, using = "//div[@class='mdl-layout__drawer is-visible']//a[1]")
    public WebElement subMenuMotorPolicies;


    //Motor Policies submenu
    @FindBy(how = How.XPATH, using = "//button[contains(text(),'Create a new motor policy')]")
    public WebElement btnSubMenuMotorPolicies_createNewMotorpolicy;

    @FindBy(how = How.XPATH, using = "//button[contains(text(),'Create new motor policies for a fleet')]")
    public WebElement btnSubMenuMotorPolicies_createNewMotorpolicyFleet;

    @FindBy(how = How.XPATH, using = "//button[contains(text(),'All motor policy bundles')]")
    public WebElement btnSubMenuMotorPolicies_allMotorPoliciesBundles;

    @FindBy(how = How.XPATH, using = "//button[contains(text(),'All motor policies')]")
    public WebElement btnSubMenuMotorPolicies_allMotorPolicies;

    @FindBy(how = How.XPATH, using = "//button[contains(text(),'Approve motor policies')]")
    public WebElement btnSubMenuMotorPolicies_approveMotorPolicies;

    @FindBy(how = How.XPATH, using = "//button[contains(text(),'Verify Compulsory Policy Documents')]")
    public WebElement btnSubMenuMotorPolicies_verifyCompulsoryPolicyDocuments;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div/div[2]/main/div/div/div[1]/span")
    public WebElement btnSearchMotorPolicies;
    //

    //----


    @FindBy(how = How.XPATH, using = "//div[@class='mdl-layout__drawer-button']")
    public WebElement btnSideMenu;

    @FindBy(how = How.XPATH, using = "//div[@class='mdl-layout__obfuscator is-visible']")
    public WebElement dummy;


    public void inputAdminLoginInfo(String adminEmail, String adminPassword) {
        txtAdminEmail.sendKeys(adminEmail);
        txtAdminPassword.sendKeys(adminPassword);

    }

    public void btnAdminLogin_click() {
        btnAdminLogin.click();
    }


    public void openSideMenu() {

        btnSideMenu.click();
    }
}


