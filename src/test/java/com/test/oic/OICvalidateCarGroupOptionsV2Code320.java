package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarGroupOptionsV2Code320 extends BaseOIC {

    @Test(dataProvider = "V2Code320CarGroupOptionsTestData")
    public void validateCarGroupValidOptionsV2Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V2Code320CarGroupOptionsTestData")
    public Object[][] V2Code320CarGroupOptionsTestData() {
        return new Object[][]{
                {7335.14,"v2","320",2.5,0,1,50000,0,500000,10000000,1000000,3,100000,100000,300000,0},
                {7099.92,"v2","320",2.5,18,2,60000,1,500000,10000000,1000000,3,100000,100000,300000,0},
                {7154.04,"v2","320",2.5,20,3,70000,2,500000,10000000,1000000,3,100000,100000,300000,0},
                {6910.77,"v2","320",2.5,25,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6962.21,"v2","320",2.5,26,5,90000,4,500000,10000000,1000000,3,100000,100000,300000,0},
                {7015.79,"v2","320",2.5,30,6,100000,5,500000,10000000,1000000,3,100000,100000,300000,0},
                {6759.67,"v2","320",2.5,36,7,110000,6,500000,10000000,1000000,3,100000,100000,300000,0}

        };
    }
}
