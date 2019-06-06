package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICCaculatePriceV1 extends BaseOIC {


    @Test(dataProvider = "v1Code110TestData")
    public void calcPriceV1Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);

        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(response.getStatusCode(), 200);
        Assert.assertEquals(response.getBody().jsonPath().get("IsValid").toString().toLowerCase(), "true");
        Assert.assertEquals(response.getBody().jsonPath().get("SellNet").toString(), String.valueOf(sellNet));

    }

    @DataProvider(name = "v1Code110TestData")
    public Object[][] v1Code110TestData() {
        return new Object[][]{
                {53673.34, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {10987.83, "v1", "110", 1400, 0, 12, 180000, 5, 500000, 10000000, 1000000, 7, 100000, 100000, 200000, 0},
                {10660.41, "v1", "110", 1399, 0, 12, 160000, 5, 500000, 10000000, 1000000, 7, 100000, 100000, 200000, 0},
                {10987.83, "v1", "110", 1400, 0, 8, 180000, 5, 500000, 10000000, 1000000, 7, 100000, 100000, 200000, 0},
                {10987.83, "v1", "110", 1600, 0, 7, 190000, 5, 500000, 10000000, 1000000, 7, 100000, 100000, 200000, 0}
        };
    }


    @Test(dataProvider = "v1Code320TestData")
    public void calcPriceV1Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible,
                                   double usageRate,
                                   double engineSizeRate,
                                   double driverAgeRate,
                                   double carAgeRate,
                                   double sumInsuredRate,
                                   double carGroupRate,
                                   double perPersonRate,
                                   double perTimeRate,
                                   double damageRate,
                                   double PAAmount,
                                   double MEDAmount,
                                   double BBAmount) {
        //Arrange

        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);

        double expectedSellNet = 0;
        double expectedPremiumTotalBeforeDiscount = 0;
        double execpecdAdditionalCoverage = 0;
        double expectedPremiumTotal = 0;
        double expectedStamp = 0;
        double expectedVAT = 0;


        //Act
        Response response = request.post(APIPath);
        float actualBasePremium = response.getBody().jsonPath().get("BasePremium");


        System.out.println("BasePremium = " + actualBasePremium);


        System.out.println("NCB = " + response.getBody().jsonPath().get("Discount.PercentNCB"));
        System.out.println("Fleet = " + response.getBody().jsonPath().get("Discount.PercentFleet"));
        System.out.println("Direct = " + response.getBody().jsonPath().get("Discount.PercentDirect"));
        double actualBasePrice = (actualBasePremium * usageRate * engineSizeRate * driverAgeRate * carAgeRate * sumInsuredRate * carGroupRate * perPersonRate * perTimeRate * damageRate);

        System.out.println("Calc PremiumTotalMainCoverage  = " + actualBasePrice);
        System.out.println("Addition  = " + (PAAmount + MEDAmount + BBAmount));
        System.out.println("Deductible  = " + calcDeductible(deductible));
        double actualBasePrice2 = actualBasePrice + (PAAmount + MEDAmount + BBAmount) - calcDeductible(deductible);

        double actualDiscountNCB = Double.parseDouble(response.getBody().jsonPath().get("Discount.PercentNCB").toString());
        double actualDiscountFleet = Double.parseDouble(response.getBody().jsonPath().get("Discount.PercentFleet").toString());
        double actualDiscountDirect = Double.parseDouble(response.getBody().jsonPath().get("Discount.PercentDirect").toString());

        System.out.println("Total discount = " + this.calcDiscount(actualBasePrice2, actualDiscountNCB, actualDiscountFleet, actualDiscountDirect));

        expectedPremiumTotal = (actualBasePrice2 - this.calcDiscount(actualBasePrice2, actualDiscountNCB, actualDiscountFleet, actualDiscountDirect));
        System.out.println("Premium Total :" + expectedPremiumTotal);


        expectedStamp = calcStamp(expectedPremiumTotal);

        System.out.println("expectedPremiumTotal :" + expectedPremiumTotal);
        System.out.println("Stamp : " + expectedStamp);

        expectedVAT = calcVAT(expectedPremiumTotal, expectedStamp);

        System.out.println("VAT : " + expectedVAT);


        response.getBody().prettyPrint();

        //Assert
        Assert.assertEquals(response.getStatusCode(), 200);
        Assert.assertEquals(response.getBody().jsonPath().get("IsValid").toString().toLowerCase(), "true");
        Assert.assertEquals(response.getBody().jsonPath().get("SellNet").toString(), String.valueOf(sellNet));

    }

    @DataProvider(name = "v1Code320TestData")
    public Object[][] v1Code320TestData() {
        return new Object[][]{
                {8415.55, "v1", "320", 2.5, 0, 13, 150000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 200000, 0, 1.00, 0.92, 1.00, 0.95, 1.10, 1.00, 1.0095, 1.00, 1.008, 600, 270, 1000}
        };
    }
}
