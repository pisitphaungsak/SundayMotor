package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarSizeOptionsV2Code320 extends BaseOIC {

    @Test(dataProvider = "V2Code320CarSizeOptionsTestData")
    public void validateCarSizeValidOptionsV2Code320(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V2Code320CarSizeOptionsTestData")
    public Object[][] V2Code320CarSizeOptionsTestData() {
        return new Object[][]{
                {6602.43,"v2","320",2.5,0,1,50000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6397.16,"v2","320",4,18,2,60000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {7052.68,"v2","320",4.1,20,3,70000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6813.52,"v2","320",10,25,4,80000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {6864.46,"v2","320",12,26,5,90000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {8855.57,"v2","320",12.1,30,6,100000,3,500000,10000000,1000000,3,100000,100000,300000,0},
                {8513.91,"v2","320",50,36,7,110000,3,500000,10000000,1000000,3,100000,100000,300000,0}
        };
    }
}
