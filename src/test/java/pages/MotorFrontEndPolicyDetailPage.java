package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class MotorFrontEndPolicyDetailPage {

    public MotorFrontEndPolicyDetailPage(WebDriver driver) {

        PageFactory.initElements(driver,this);
    }

    //Policy Header

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[1]")
    public WebElement h_lblHeader;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[2]")
    public WebElement h_lblCarDetail;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[3]")
    public WebElement h_lblCarPlate;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[5]")
    public WebElement h_lblPolicyType;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[6]")
    public WebElement h_lblPolicyPremium;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[7]")
    public WebElement h_lblEffectiveDate;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[8]")
    public WebElement h_lblEffectiveDateValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[9]")
    public WebElement h_lblPolicyHolder;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[1]/div/div/div[10]")
    public WebElement h_lblPolicyHolderValue;

    // Policy Body

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[1]/div")
    public WebElement b_lblPolicy;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[3]/div[1]")
    public WebElement b_lblCoverageMax;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[2]/div[1]")
    public WebElement b_lblDeductible;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[2]/div[2]")
    public WebElement b_lblDeductibleValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[4]/div[2]")
    public WebElement lbl3rdPartyPropertyDamage;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[4]/div[3]")
    public WebElement b_lbl33rdPartyPropertyDamageValue;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[5]/div[2]")
    public WebElement b_lblYourCarDamageWith3rdParty;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[4]/div[3]")
    public WebElement b_lblYourCarDamageWith3rdPartyValue;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[6]/div[2]")
    public WebElement b_lblYourCarDamageWithout3rdParty;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[6]/div[3]")
    public WebElement b_lblYourCarDamageWithout3rdPartyValue;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[7]/div[2]")
    public WebElement b_lblFireDamageAndLostVehicle;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[7]/div[3]")
    public WebElement b_lblFireDamageAndLostVehicleValue;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[8]/div[2]")
    public WebElement b_lblWaterDamage;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[8]/div[3]")
    public WebElement b_lblWaterDamageValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[9]/div[2]")
    public WebElement b_lblWindshieldDamage;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[9]/div[3]")
    public WebElement b_lblWindshieldDamageValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[10]/div[2]")
    public WebElement b_lblBailPaymentInLegalAction;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[10]/div[3]")
    public WebElement b_lblBailPaymentInLegalActionValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[11]/div[2]")
    public WebElement b_lblMedicalPaymentToYouAndYourPassengers;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[11]/div[3]")
    public WebElement b_lblMedicalPaymentToYouAndYourPassengersValue;

    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[12]/div[2]")
    public WebElement b_lblMedicalPaymentTo3rdParty;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[12]/div[3]/div[1]")
    public WebElement b_lblMedicalPaymentTo3rdPartyValuePerson;
    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[12]/div[3]/div[2]")
    public WebElement b_lblMedicalPaymentTo3rdPartyValueTotal;


    @FindBy(how = How.XPATH, using = "//*[@id=\"root\"]/div/section/main/div/div[2]/div/div/div[15]/div[2]")
    public WebElement c_lblshowCPTDetailtoggle;



}
