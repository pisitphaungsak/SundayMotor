package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarSizeOptionsV1Code320 extends BaseOIC {

    @Test(dataProvider = "V1Code320CarSizeOptionsTestData")
    public void validateCarSizeValidOptionsV1Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        double expectedSellNet = sellNet;
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(200, response.getStatusCode());
        Assert.assertTrue(response.getBody().jsonPath().get("IsValid"));
        Assert.assertTrue(compareNumber(response.getBody().jsonPath().get("SellNet"), expectedSellNet));
    }

    @DataProvider(name = "V1Code320CarSizeOptionsTestData")
    public Object[][] V1Code320CarSizeOptionsTestData() {
        return new Object[][]{
                {9701.07, "v1", "320", 2.5, 0, 1, 50000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {9681.06, "v1", "320",  4, 18, 2, 60000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {10642.55, "v1", "320", 4.1, 20, 3, 70000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {10322.46, "v1", "320", 10, 25, 4, 80000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {10322.46, "v1", "320", 12, 26, 5, 90000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {11543.65, "v1", "320", 12.1, 30, 6, 100000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0},
                {10908.49, "v1", "320", 50, 36, 7, 110000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 300000, 0}
        };
    }
}
