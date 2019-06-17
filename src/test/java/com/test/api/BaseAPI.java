package com.test.api;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.testng.Assert;
import org.testng.annotations.BeforeTest;

import static com.test.oic.TestAPI.pathParam;

public class BaseAPI {
    public static RequestSpecification requestSpec;
    public static String APIPath = "/identitytoolkit/v3/relyingparty/verifyPassword?key=AIzaSyCJVZOJKNLEPzvYGSa_NbCy_g_EMzsEA7s";

    @BeforeTest
    public void testSetup() {
        RequestSpecBuilder builder = new RequestSpecBuilder();
        builder.setBaseUri("https://www.googleapis.com");
        builder.setContentType(ContentType.JSON);
        requestSpec = builder.build();

    }

    public String getToken(String inEmail, String inPassword) {
        //Arrange
        String email = inEmail;
        String password= inPassword;
        boolean returnSecureToken= true;
        var request = RestAssured.given().spec(requestSpec);

        pathParam.put("email", email);
        pathParam.put("password", password);
        pathParam.put("returnSecureToken", returnSecureToken);

        request.body(pathParam);
        //Act
        Response response = request.post(APIPath);

        //Assert
        Assert.assertEquals(200, response.getStatusCode());
        return response.getBody().jsonPath().get("idToken").toString();
    }
}
