package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateDriverAgeOptionsV2Code320 extends BaseOIC {

    @Test(dataProvider = "V2Code320DriverAgeOptionsTestData")
    public void validateDriverAgeValidOptionsV2Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        double  expectedSellNet =sellNet;
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(200, response.getStatusCode());
        Assert.assertTrue(response.getBody().jsonPath().get("IsValid"));
        Assert.assertTrue(compareNumber(response.getBody().jsonPath().get("SellNet"),expectedSellNet));
    }

    @DataProvider(name = "V2Code320DriverAgeOptionsTestData")
    public Object[][] V2Code320DriverAgeOptionsTestData() {
        return new Object[][]{
                {7327.51,"v2","320",2.5,0,1,50000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7092.76,"v2","320",2.5,18,2,60000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7147.84,"v2","320",2.5,20,3,70000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6904.01,"v2","320",2.5,25,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6955.34,"v2","320",2.5,26,5,90000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7008.81,"v2","320",2.5,30,6,100000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6753.22,"v2","320",2.5,36,7,110000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6802.95,"v2","320",2.5,40,8,120000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6851.61,"v2","320",2.5,50,9,130000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6585.32,"v2","320",2.5,60,10,140000,3,500000,10000000,1000000,3,100000,100000,300000,0}
        };
    }
}
