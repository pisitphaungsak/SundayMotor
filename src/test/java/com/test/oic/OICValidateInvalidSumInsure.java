package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.bytebuddy.implementation.bytecode.Throw;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICValidateInvalidSumInsure extends BaseOIC {

    @Test(dataProvider = "sumInsure110LowerThanMinTestData")
    public void validateSumInsure110LowerThanMin(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        //try {
            Assert.assertNotEquals(200, response.getStatusCode());
        //}catch (AssertionError ex){
        //    System.out.println("Error : " + ex.getMessage());
        //}
    }

    @DataProvider(name = "sumInsure110LowerThanMinTestData")
    public Object[][] sumInsure110LowerThanMinTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 40000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @Test(dataProvider = "sumInsure110HigherThanMaxTestData")
    public void validateSumInsure110HigherThanMax(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        Assert.assertNotEquals(200, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure110HigherThanMaxTestData")
    public Object[][] sumInsure110HigherThanMaxTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 61000000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @Test(dataProvider = "sumInsure110OptionNotExistTestData")
    public void sumInsure110OptionNotExistTestData(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        Assert.assertNotEquals(200, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure110OptionNotExistTestData")
    public Object[][] sumInsure110OptionNotExistTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 1610000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @Test(dataProvider = "sumInsure320LowerThanMinTestData")
    public void validateSumInsure320LowerThanMin(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);

        //response.prettyPrint();
        //Assert
        Assert.assertNotEquals(200, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure320LowerThanMinTestData")
    public Object[][] sumInsure320LowerThanMinTestData() {
        return new Object[][]{
                {59638.59, "v1", "320", 1995, 0, 3, 40000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @DataProvider(name = "sumInsure320OptionNotExistTestData")
    public Object[][] sumInsure320OptionNotExistTestData() {
        return new Object[][]{
                {59638.59, "v1", "320", 1995, 0, 3, 1610000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }


}
