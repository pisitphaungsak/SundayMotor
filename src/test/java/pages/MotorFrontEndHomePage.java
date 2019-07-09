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

    //@FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/a[1]")
    //public WebElement lblLogin;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/header/div[1]/div[3]/a[1]")
    public WebElement lblLogin;



    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[2]/a")
    public WebElement lblUserName;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[2]/a")
    public WebElement lblUserNameLogin;


    //Top Menu
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/a[1]")
    public WebElement lnkHomeTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/a[2]")
    public WebElement lnkFAQTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/a[3]")
    public WebElement lnkClaimsTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/a[4]")
    public WebElement lnkHistoryTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/a[5]")
    public WebElement lnkblogTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[2]/div")
    public WebElement lnklogoutTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[1]/button[2]")
    public WebElement lblChangeToEnglishTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div/button[1]")
    public WebElement btnThaiTop;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div/button[2]")
    public WebElement btnEnglishTop;




    //Left Menu
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[1]/div/button")
    public WebElement btnLettMenu;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/a[1]")
    public WebElement lnkHomeLeft;


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/a[2]")
    public WebElement lnkFAQLeft;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/a[3]")
    public WebElement lnkClaimsLeft;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/a[4]")
    public WebElement lnkHistoryLeft;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/a[5]")
    public WebElement lnkblogLeft;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/a[6]")
    public WebElement lnkLoginSundayLeft;



    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/div[1]/div[1]/div[1]/div[3]/div[2]/div")
    public WebElement lnklogoutLeft;

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div[2]/div/div/div/div[1]/div/button[2]")
    public WebElement btnEnglishLeft;







}
