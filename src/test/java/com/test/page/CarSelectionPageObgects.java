package com.test.page;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CarSelectionPageObgects {

    public CarSelectionPageObgects(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    //Toyota Button
    @FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div[2]/div[1]/div/div[2]/div[2]/div[1]/ul/li[1]/button")
    public WebElement btnToyota;
}
