package com.test.oic;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;
import org.testng.annotations.BeforeTest;

import java.util.HashMap;

public class BaseOIC {

    public static RequestSpecification requestSpec;
    public static String APIPath = "/motor-pricing/oic";

    public static HashMap<String, Object> pathParam = new HashMap<>();

    @BeforeTest
    public void testSetup() {
        RequestSpecBuilder builder = new RequestSpecBuilder();
        builder.setBaseUri("https://api-staging.easysunday.com");
        builder.setContentType(ContentType.JSON);
        requestSpec = builder.build();
    }


    public void assignParameter(double sellNet, String policyType, String carCode, int engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible){

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

    }

}
