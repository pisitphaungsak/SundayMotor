package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class OICvalidateSumInsureOptionsV3Code110 extends BaseOIC{

    @Test(dataProvider = "V3Code110SumInsureOptionsTestData")
    public void validateSumInsureValidOptionsV3Code110(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {
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

    @DataProvider(name = "V3Code110SumInsureOptionsTestData")
    public Object[][] V3Code110SumInsureOptionsTestData() {
        return new Object[][]{
                {6226.33,"v3","110",1995,0,3,50000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,60000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,70000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,80000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,90000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,100000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,110000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,120000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,130000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,140000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,160000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6226.33,"v3","110",1995,0,3,170000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,180000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,190000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,210000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,220000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,230000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,240000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,250000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,260000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,270000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,280000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,290000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,300000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,310000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,320000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,330000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,340000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,350000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,360000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,370000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,380000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,390000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,450000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,460000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,470000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,480000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,490000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,510000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,520000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,530000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,540000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,550000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,560000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,570000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,580000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,590000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,610000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,620000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,630000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,640000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,650000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,660000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,670000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,680000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,690000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,700000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,710000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,720000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,730000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,740000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,750000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,760000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,770000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,780000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,790000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,810000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,820000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,830000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,840000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,850000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,860000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,870000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,880000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,890000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,900000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,910000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,920000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,930000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,940000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,950000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,960000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,970000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,980000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,990000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1050000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1100000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1150000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1250000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1300000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1350000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1400000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1450000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1550000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1650000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1700000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1750000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1850000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1900000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,1950000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2100000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2300000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2400000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2700000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,2900000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3100000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3300000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3400000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3700000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,3900000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,4000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,4200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,4400000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,4600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,4800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,5000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,5200000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,5400000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,5600000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,5800000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,6000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,6500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,7000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,7500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,8000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,8500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,9000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,9500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,10000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,10500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,11000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,11500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,12000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,12500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,13000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,13500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,14000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,14500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,15000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,15500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,16000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,16500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,17000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,17500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,18000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,18500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,19000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,19500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,20000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,20500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,21000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,21500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,22000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,22500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,23000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,23500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,24000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,24500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,25000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,25500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,26000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,26500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,27000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,27500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,28000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,28500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,29000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,29500000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,30000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,31000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,32000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,33000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,34000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,35000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,36000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,37000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,38000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,39000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,40000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,41000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,42000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,43000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,44000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,45000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,46000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,47000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,48000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,49000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,50000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,51000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,52000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,53000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,54000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,55000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,56000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,57000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,58000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,59000000,2,1000000,10000000,2500000,7,200000,200000,300000,0},
                {6550.54,"v3","110",1995,0,3,60000000,2,1000000,10000000,2500000,7,200000,200000,300000,0}
        };
    }
}