package steps;

import base.BaseUtil;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import utilities.RestAssuredExtenstion;

public class Hook extends BaseUtil {

    private BaseUtil base;


    public Hook(BaseUtil base) {
        this.base = base;
    }



    @Before
    public void InitializeTest() {
        //Arrange
        RequestSpecBuilder builder = new RequestSpecBuilder();
        builder.setBaseUri("https://api-staging.easysunday.com");
        builder.setContentType(ContentType.JSON);
        var requestSpec = builder.build();

        base.Request = RestAssured.given().spec(requestSpec);

        base.stepInfo ="Hello World";

        RestAssuredExtenstion restAssuredExtenstion = new RestAssuredExtenstion();
    }

    @After
    public void TearDownTest() {

        System.out.println("Ens of test : MOCK");

    }
}
