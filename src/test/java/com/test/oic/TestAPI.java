package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.http.Header;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.testng.Assert;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import java.util.HashMap;



public class TestAPI {

    public static RequestSpecification requestSpec;
    private static String APIPath = "/motor-pricing/oic";

    public static HashMap<String, Object> pathParam = new HashMap<>();

    @BeforeTest
    public void testSetup() {
        RequestSpecBuilder builder = new RequestSpecBuilder();
        builder.setBaseUri("https://api-staging.easysunday.com");
        builder.setContentType(ContentType.JSON);
        requestSpec = builder.build();
    }





    @Test(dataProvider = "carAgeTestData")
    public void validateCarAgeOptions(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {

        var request = RestAssured.given().spec(requestSpec);


        pathParam.put("sellNet", sellNet);
        pathParam.put("policyType", policyType);
        pathParam.put("carCode", carCode);
        pathParam.put("engineSize", engineSize);
        pathParam.put("driverAge", driverAge);
        pathParam.put("carAge", carAge);
        pathParam.put("sumInsured", sumInsured);
        pathParam.put("carGroup", carGroup);
        pathParam.put("injuryTPPerson", injuryTPPerson);
        pathParam.put("injuryTPTime", injuryTPTime);
        pathParam.put("injuryTPDamage", injuryTPDamage);
        pathParam.put("seat", seat);
        pathParam.put("coverageLifeloss", coverageLifeloss);
        pathParam.put("coverageMedical", coverageMedical);
        pathParam.put("coverageBailbond", coverageBailbond);
        pathParam.put("deductible", deductible);

        request.body(pathParam);




        //Act
        Response response = request.post(APIPath);
        response.getBody().prettyPrint();
        System.out.println("Expected SellNet : " + sellNet);

        //Assert

        Assert.assertEquals(response.getStatusCode(), 200);
        Assert.assertEquals(response.getBody().jsonPath().get("SellNet").toString(), String.valueOf(sellNet));

    }

    @Test(dataProvider = "carGroupTestData")
    public void validateCarGroupOptions(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {

        var request = RestAssured.given().spec(requestSpec);



        pathParam.put("sellNet", sellNet);
        pathParam.put("policyType", policyType);
        pathParam.put("carCode", carCode);
        pathParam.put("engineSize", engineSize);
        pathParam.put("driverAge", driverAge);
        pathParam.put("carAge", carAge);
        pathParam.put("sumInsured", sumInsured);
        pathParam.put("carGroup", carGroup);
        pathParam.put("injuryTPPerson", injuryTPPerson);
        pathParam.put("injuryTPTime", injuryTPTime);
        pathParam.put("injuryTPDamage", injuryTPDamage);
        pathParam.put("seat", seat);
        pathParam.put("coverageLifeloss", coverageLifeloss);
        pathParam.put("coverageMedical", coverageMedical);
        pathParam.put("coverageBailbond", coverageBailbond);
        pathParam.put("deductible", deductible);

        request.body(pathParam);

        //Act
        Response response = request.post(APIPath);
        response.getBody().prettyPrint();
        System.out.println("Expected SellNet : " + sellNet);

        //Assert
        Assert.assertEquals(response.getStatusCode(), 200);

    }







    @DataProvider(name = "carGroupTestData")
    public Object[][] carGroupTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 0, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 1, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 3, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 4, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 5, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 10, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},

                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 0, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 1, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 3, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 4, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 5, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 10, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},

                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 0, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 1, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 3, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 4, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 5, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v5", "110", 1995, 0, 3, 2600000, 10, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},

                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 0, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 1, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 3, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 4, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 5, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 10, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},


        };
    }



    @DataProvider(name = "carAgeTestData")
    public Object[][] carAgeTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 0, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 1, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 2, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 4, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 5, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 6, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 7, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 8, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 9, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 10, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 11, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 1000, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}

        };
    }

    @DataProvider(name = "discountOptionTestData")
    public Object[][] createTestDataRecords() {
        return new Object[][]{
                //{SellNet|PolicyType|CarCode|EngineSize|DriverAge,CarAge,SumInsured,CarGroup,injuryTPPerson,injuryTPTime,
                {74546.90, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {67092.21, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {53673.34, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {52182.83, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {46964.44, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {44728.14, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {40255.54, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {37273.45, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {33545.57, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {31868.88, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };


    }




    @Test(dataProvider = "data2")
    public void testOIC(double sellNet,
                        String policyType,
                        String carCode,
                        int engineSize,
                        int driverAge,
                        int carAge,
                        int sumInsured,
                        int carGroup,
                        int injuryTPPerson,
                        int injuryTPTime,
                        int injuryTPDamage,
                        int seat,
                        int coverageLifeloss,
                        int coverageMedical,
                        int coverageBailbond,
                        int deductible) {
        //Arrange


        var request = RestAssured.given().spec(requestSpec);

        //set body
        HashMap<String, Object> pathParam = new HashMap<>();

        pathParam.put("sellNet", sellNet);
        pathParam.put("policyType", policyType);
        pathParam.put("carCode", carCode);
        pathParam.put("engineSize", engineSize);
        pathParam.put("driverAge", driverAge);
        pathParam.put("carAge", carAge);
        pathParam.put("sumInsured", sumInsured);
        pathParam.put("carGroup", carGroup);
        pathParam.put("injuryTPPerson", injuryTPPerson);
        pathParam.put("injuryTPTime", injuryTPTime);
        pathParam.put("injuryTPDamage", injuryTPDamage);
        pathParam.put("seat", seat);
        pathParam.put("coverageLifeloss", coverageLifeloss);
        pathParam.put("coverageMedical", coverageMedical);
        pathParam.put("coverageBailbond", coverageBailbond);
        pathParam.put("deductible", deductible);


        request.body(pathParam);

        //Act
        Response response = request.post("/motor-pricing/oic");


        ResponseBody responseBody = response.getBody();

        JsonPath jsonPathEvaluator = response.jsonPath();

        Object output = jsonPathEvaluator.get("SellNet");

        //Assert.assertEquals(response.getBody().jsonPath().get("SellNet"),74546.9);
        //assertThat(response.getBody().jsonPath().get("SellNet"), is(74546.9));


        String tmp = responseBody.toString();

        //Assert.assertTrue(tmp.contains("SellNet"));

        System.out.println(tmp);

        response.body().prettyPrint();

        //System.out.println(response.getBody().path("Discount.direct").toString());

        //System.out.println("----------------------" + output.toString());

        //Assert

        //Assert.assertEquals(response.getBody().path("SellNet"),sellNet);

        //Assert.assertEquals(response.getBody().path("SellNet"),sellNet);

        //Object responseSellNet = response.getBody().path("SellNet");

        //System.out.println(((double) responseSellNet));

        // Assert.assertEquals(responseSellNet,String.valueOf(sellNet));
    }


}


