package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICcalc320V1 extends BaseOIC {

    @Test(dataProvider = "v1Code320TestData")
    public void test1(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);

        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(response.getStatusCode(), 200);
        Assert.assertEquals(response.getBody().jsonPath().get("IsValid").toString().toLowerCase(), "true");
        Assert.assertEquals(response.getBody().jsonPath().get("SellNet").toString(), String.valueOf(sellNet));


        response.getBody().prettyPrint();


    }

    @DataProvider(name = "v1Code320TestData")
    public Object[][] v1Code320TestData() {
        return new Object[][]{
                {8557.86, "v1", "320", 3, 0, 14, 140000, 3, 300000, 10000000, 1000000, 3, 200000, 200000, 200000, 0}
        };
    }
}
