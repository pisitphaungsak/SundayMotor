package com.test.ui;

import org.testng.Assert;
import org.testng.annotations.Test;

public class TestDirectSeleFooter extends BaseUI {

    @Test
    public void validateBrokerNameAtPageFooter() {
        //Assign
        String expectedBrokerName = "Sunday Insurance 2019. All rights reserved.";

        String colorString = sundayHomePage.lblFooterBrokerName.getCssValue("color").trim();
        System.out.println("RGB_Color: " + colorString);

        String[] arrColor = colorString .split("#");

        //Act
        actions.moveToElement(sundayHomePage.lblFooterBrokerName);
        actions.perform();

        //Assert
        Assert.assertEquals(sundayHomePage.lblFooterBrokerName.getText(), expectedBrokerName);
    }
}
