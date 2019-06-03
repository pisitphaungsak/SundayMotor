package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateCarCodeOptions extends BaseOIC{

    @Test(dataProvider = "carCodeValidData")
    public void validateValidCarCodeOptions(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);

        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(response.getStatusCode(), 200);

    }

    @DataProvider(name = "carCodeValidData")
    public Object[][] carCodeValidData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "320", 3, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}

        };
    }


    @Test(dataProvider = "carCodeValidData")
    public void validateInvalidCarCodeOptions(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange

        //Act

        //Assert


    }

    @DataProvider(name = "carCodeInalidData")
    public Object[][] carCodeInalidData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "320", 3, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}

        };
    }
}


