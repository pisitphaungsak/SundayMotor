package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarGroupOptionsV3Code320 extends BaseOIC {

    @Test(dataProvider = "V3Code320CarGroupOptionsTestData")
    public void validateCarGroupValidOptionsV3Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V3Code320CarGroupOptionsTestData")
    public Object[][] V3Code320CarGroupOptionsTestData() {
        return new Object[][]{
                {4997.02,"v3","320",2.5,0,1,50000,0,500000,10000000,1000000,3,100000,100000,300000,0},
                {4822.55,"v3","320",2.5,18,2,60000,1,500000,10000000,1000000,3,100000,100000,300000,0},
                {4822.55,"v3","320",2.5,20,3,70000,2,500000,10000000,1000000,3,100000,100000,300000,0},
                {4650.22,"v3","320",2.5,25,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {4650.22,"v3","320",2.5,26,5,90000,4,500000,10000000,1000000,3,100000,100000,300000,0},
                {4650.22,"v3","320",2.5,30,6,100000,5,500000,10000000,1000000,3,100000,100000,300000,0},
                {4475.76,"v3","320",2.5,36,7,110000,6,500000,10000000,1000000,3,100000,100000,300000,0}

        };
    }
}
