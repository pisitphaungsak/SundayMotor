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
        Assert.assertEquals(422, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure110LowerThanMinTestData")
    public Object[][] sumInsure110LowerThanMinTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 49999, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
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

        //Assert
        Assert.assertEquals(422, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure320LowerThanMinTestData")
    public Object[][] sumInsure320LowerThanMinTestData() {
        return new Object[][]{
                {59638.59, "v1", "320", 1995, 0, 3, 49999, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }


    //Higher
    @Test(dataProvider = "sumInsure110HigherThanMaxTestData")
    public void validateSumInsure110HigherThanMax(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        Assert.assertEquals(422, response.getStatusCode());

    }

    @DataProvider(name = "sumInsure110HigherThanMaxTestData")
    public Object[][] sumInsure110HigherThanMaxTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 60000001, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @Test(dataProvider = "sumInsure320HigherThanMaxTestData")
    public void validateSumInsure320HigherThanMax(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        Assert.assertEquals(422, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure320HigherThanMaxTestData")
    public Object[][] sumInsure320HigherThanMaxTestData() {
        return new Object[][]{
                {59638.59, "v1", "320", 1995, 0, 3, 10000001, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }




    //Invalid Option


    @Test(dataProvider = "sumInsure110OptionNotExistTestData")
    public void sumInsure110OptionNotExistTestData(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);
        //Assert
        Assert.assertEquals(422, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure110OptionNotExistTestData")
    public Object[][] sumInsure110OptionNotExistTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 55000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }



    @Test(dataProvider = "sumInsure320OptionNotExistTestData")
    public void sumInsure320OptionNotExistTestData(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
        //Arrange
        var request = RestAssured.given().spec(requestSpec);
        assignParameter(sellNet, policyType, carCode, engineSize, driverAge, carAge, sumInsured, carGroup, injuryTPPerson, injuryTPTime, injuryTPDamage, seat, coverageLifeloss, coverageMedical, coverageBailbond, deductible);
        request.body(pathParam);

        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(422, response.getStatusCode());
    }

    @DataProvider(name = "sumInsure320OptionNotExistTestData")
    public Object[][] sumInsure320OptionNotExistTestData() {
        return new Object[][]{
                {59638.59, "v1", "320", 1995, 0, 3, 55000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }



}
