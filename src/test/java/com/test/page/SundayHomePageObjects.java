package com.test.page;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SundayHomePageObjects {

    public SundayHomePageObjects(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/div[11]/div[2]/span")
    public WebElement lblFooterBrokerName;
}
