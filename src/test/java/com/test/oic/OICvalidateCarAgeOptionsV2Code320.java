package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarAgeOptionsV2Code320 extends BaseOIC {

    @Test(dataProvider = "V2Code320CarAgeOptionsTestData")
    public void validateCarAgeValidOptionsV2Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V2Code320CarAgeOptionsTestData")
    public Object[][] V2Code320CarAgeOptionsTestData() {
        return new Object[][]{
                {6748.74,"v2","320",2.5,0,1,50000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6800.08,"v2","320",2.5,0,2,60000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6852.49,"v2","320",2.5,0,3,70000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6904.90,"v2","320",2.5,0,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6956.24,"v2","320",2.5,0,5,90000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6956.24,"v2","320",2.5,0,5,90000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7009.72,"v2","320",2.5,0,6,100000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7061.07,"v2","320",2.5,0,7,110000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7113.48,"v2","320",2.5,0,8,120000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7165.89,"v2","320",2.5,0,9,130000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7217.23,"v2","320",2.5,0,10,140000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7270.71,"v2","320",2.5,0,50,150000,3,500000,10000000,1000000,3,100000,100000,300000,0}
        };
    }
}
