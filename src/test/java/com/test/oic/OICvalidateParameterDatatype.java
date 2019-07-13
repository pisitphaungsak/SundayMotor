package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateParameterDatatype extends BaseOIC{

    @Test(dataProvider = "V1Code110SumInsureOptionsTestData")
    public void validateSumInsureValidOptionsV1Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        double expectedSellNet =sellNet;
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);

        //Assert
        response.prettyPrint();

        Assert.assertEquals(422, response.getStatusCode());
        //Assert.assertTrue(compareNumber(response.getBody().jsonPath().get("Message"),expectedSellNet));

    }

    @DataProvider(name = "V1Code110SumInsureOptionsTestData")
    public Object[][] validateDriverAgeTestData() {
        return new Object[][]{
                {11686.54, "v1", "110", 1995, 15, 3, 50000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {11686.54, "v1", "110", 1995, 0, 3, 50000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };


    }

}
