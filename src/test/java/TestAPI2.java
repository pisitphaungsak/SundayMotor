import cucumber.api.java.en.Given;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.json.simple.JSONObject;
import org.testng.Assert;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;

import java.util.HashMap;

import static io.restassured.RestAssured.given;
import static net.bytebuddy.matcher.ElementMatchers.is;
import static org.hamcrest.Matchers.hasSize;

public class TestAPI2 {

    @Test
    public void testOIC7() {
        RestAssured.baseURI = "http://restapi.demoqa.com/customer";
        RequestSpecification request = RestAssured.given();

        JSONObject pathParam = new JSONObject();

        pathParam.put("sellNet", 53673.34);
        pathParam.put("policyType", "v1");
        pathParam.put("carCode", "110");
        pathParam.put("engineSize", 1995);
        pathParam.put("driverAge", 0);
        pathParam.put("carAge", 3);
        pathParam.put("sumInsured", 2600000);
        pathParam.put("carGroup", 2);
        pathParam.put("injuryTPPerson", 1000000);
        pathParam.put("injuryTPTime", 10000000);
        pathParam.put("injuryTPDamage", 2500000);
        pathParam.put("seat", 7);
        pathParam.put("coverageLifeloss", 200000);
        pathParam.put("coverageMedical", 200000);
        pathParam.put("coverageBailbond", 300000);
        pathParam.put("deductible", 0);

        request.body(pathParam.toJSONString());

        //var response = request.post("/motor-pricing/oic");

        Response response = request.get("/motor-pricing/oic");

        int statusCode = response.getStatusCode();

        System.out.println("Code= " + statusCode);

        System.out.println("Body = " + response.getBody().asString());

    }

    @Test(dataProvider = "seasonsAndNumberOfRaces")
    public void test_NumberOfCircuits_ShouldBe_DataDriven(String season, int numberOfRaces
            , int numberOfRaces2) {

        given().
                pathParam("raceSeason", season).
                when().
                get("http://ergast.com/api/f1/{raceSeason}/circuits.json").
                then().
                assertThat().
                body("MRData.CircuitTable.Circuits.circuitId", hasSize(numberOfRaces));


    }

    @DataProvider(name = "policyTypeTestData")
    public Object[][] policyTypeTestData() {
        return new Object[][]{
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v2", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v3", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v52", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v53", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
        };
    }

    @DataProvider(name = "data2")
    public Object[][] createTestDataRecords() {
        return new Object[][]{

                {74546.90, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}
                /*,
               /* {67092.21, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {59638.59, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {53673.34, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {52182.83, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {46964.44, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {44728.14, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {40255.54, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {37273.45, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {33545.57, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0},
                {31868.88, "v1", "110", 1995, 0, 3, 2600000, 2, 1000000, 10000000, 2500000, 7, 200000, 200000, 300000, 0}*/
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

        RequestSpecBuilder builder = new RequestSpecBuilder();
        builder.setBaseUri("https://api-staging.easysunday.com");
        builder.setContentType(ContentType.JSON);
        var requestSpec = builder.build();
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


