package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICValidateValidSumInsure extends BaseOIC{


    @Test(dataProvider = "sumInsure110ValidOptionsTestData")
    public void validateSumInsureValidOptions(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        float actualBasePremium = response.getBody().jsonPath().get("BasePremium");


        System.out.println("Actual BasePremium = " + actualBasePremium);

        response.prettyPrint();
        //Assert
        Assert.assertEquals(200, response.getStatusCode());
        Assert.assertEquals(response.getBody().jsonPath().get("BasePremium"),actualBasePremium);


    }
    @DataProvider(name = "sumInsure110ValidOptionsTestData")
    public Object[][] sumInsure110ValidOptionsTestData() {
        return new Object[][]{
                {12027.87,"v1","110",1995,0,3,120000,2,1000000,10000000,2500000,7,200000,200000,300000,0}
        };
    }
}
