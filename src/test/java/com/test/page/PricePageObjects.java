package com.test.page;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PricePageObjects {

    public PricePageObjects(WebDriver driver){
        PageFactory.initElements(driver,this);
    }

    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[1]/div/div/div[1]/div[2]/span[1]")
    public WebElement txtDualPartiesPrice;
    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[2]/div/div/div[1]/div[2]/span[1]")
    public WebElement txtThirdPartiesPrice;
    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[3]/div/div/div[1]/div[2]/span[1]")
    public WebElement txtComprehensivePartiesPrice;


    @FindBy(xpath ="//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[1]/div/div/div[1]")
    public WebElement dualPartiesPlanBtn;
    @FindBy(xpath ="//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[2]/div/div/div[1]")
    public WebElement thirdPartiesPlanBtn;
    @FindBy(xpath ="//*[@id=\"root\"]/div/div[5]/div[2]/form/div/div[3]/div/div/div[1]")
    public WebElement comprehensivePlanBtn;


}
