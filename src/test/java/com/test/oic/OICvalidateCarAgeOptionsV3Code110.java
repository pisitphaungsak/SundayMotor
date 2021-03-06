package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarAgeOptionsV3Code110 extends BaseOIC{

    @Test(dataProvider = "V3Code110CarAgeOptionsTestData")
    public void validateCarAgeValidOptionsV3Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V3Code110CarAgeOptionsTestData")
    public Object[][] V3Code110CarAgeOptionsTestData() {
        return new Object[][]{
                {6850.14,"v3","110",1995,0,1,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,2,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,3,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,4,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,5,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,6,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,7,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,8,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,9,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,10,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6850.14,"v3","110",1995,0,30,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0}
        };
    }
}
