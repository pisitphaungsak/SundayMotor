package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateDriverAgeOptionsV1Code110 extends BaseOIC {

    @Test(dataProvider = "V1Code110DriverAgeOptionsTestData")
    public void validateDriverAgeValidOptionsV1Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V1Code110DriverAgeOptionsTestData")
    public Object[][] V1Code110DriverAgeOptionsTestData() {
        return new Object[][]{
                {18438.24,"v1","110",1995,0,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17736.32,"v1","110",1995,18,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17736.32,"v1","110",1995,20,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17736.32,"v1","110",1995,24,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17033.33,"v1","110",1995,25,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17033.33,"v1","110",1995,30,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {17033.33,"v1","110",1995,35,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {16329.27,"v1","110",1995,36,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {16329.27,"v1","110",1995,40,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {16329.27,"v1","110",1995,50,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {15627.35,"v1","110",1995,60,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0}
        };
    }
}
