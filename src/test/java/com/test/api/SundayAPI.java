package com.test.api;
import io.restassured.RestAssured;
import io.restassured.http.Header;
import org.testng.annotations.Test;

public class SundayAPI extends BaseAPI{
    @Test
    public void getTokenTest() {
        //Arrange
        String email = "single.policy@gmail.com";
        String password= "motor9";
        String responseToken;
        var request = RestAssured.given().spec(requestSpec);

        responseToken = getToken(email,password);

        System.out.println("Token "+ responseToken );
        request.header(new Header("Authorization","Bearer "+ responseToken));

    }


    @Test
    public void updateDocumentStatusTest(){


    }
}
