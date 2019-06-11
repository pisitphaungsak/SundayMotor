package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateDriverAgeOptionsV1Code320 extends BaseOIC {

    @Test(dataProvider = "V1Code320DriverAgeOptionsTestData")
    public void validateDriverAgeValidOptionsV1Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V1Code320DriverAgeOptionsTestData")
    public Object[][] V1Code320DriverAgeOptionsTestData() {
        return new Object[][]{
                {9701.07,"v1","320",2.5,0,1,50000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9681.06,"v1","320",2.5,18,2,60000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9912.57,"v1","320",2.5,20,3,70000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9618.90,"v1","320",2.5,25,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9618.90,"v1","320",2.5,26,5,90000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9472.06,"v1","320",2.5,30,6,100000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {8968.43,"v1","320",2.5,36,7,110000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9041.45,"v1","320",2.5,40,8,120000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {9038.98,"v1","320",2.5,50,9,130000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {8448.63,"v1","320",2.5,60,10,140000,3,500000,10000000,1000000,3,100000,100000,300000,0}
        };
    }
}
