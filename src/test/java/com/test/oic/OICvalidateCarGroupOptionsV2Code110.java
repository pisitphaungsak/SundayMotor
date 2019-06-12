package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarGroupOptionsV2Code110 extends BaseOIC {

    @Test(dataProvider = "V2Code110CarGroupOptionsTestData")
    public void validateCarGroupValidOptionsV2Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V2Code110CarGroupOptionsTestData")
    public Object[][] V2Code110CarGroupOptionsTestData() {
        return new Object[][]{
                {9870.75, "v2", "110", 1500, 0, 1, 150000, 1, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {9870.75, "v2", "110", 2000, 0, 2, 150000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {10691.44, "v2", "110", 2001, 0, 3, 150000, 3, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {10691.44, "v2", "110", 4000, 0, 4, 150000, 4, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {10691.44, "v2", "110", 9999, 0, 5, 150000, 5, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }
}
