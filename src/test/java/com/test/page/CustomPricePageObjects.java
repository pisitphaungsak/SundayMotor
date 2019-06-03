package com.test.page;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CustomPricePageObjects {

    public CustomPricePageObjects(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    //Third Party
    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div[4]/div[1]/div/div[2]/div[1]/input")
    public WebElement cbFireAndLost;

    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div[4]/div[2]/div/div[2]/div[1]/input")
    public WebElement cbFloodDamage;

    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/form/div[6]/div/div[2]/div[1]/input")
    public WebElement cbCompulsoryThirdParty;

}




