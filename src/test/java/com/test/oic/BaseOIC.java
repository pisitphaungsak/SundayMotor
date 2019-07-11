package com.test.oic;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;
import org.testng.annotations.BeforeTest;
import utilities.OICDiscount;

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


    public void assignParameter(double sellNet, String policyType, String carCode, double engineSize, int driverAge, int carAge, int sumInsured, int carGroup, int injuryTPPerson, int injuryTPTime, int injuryTPDamage, int seat, int coverageLifeloss, int coverageMedical, int coverageBailbond, int deductible) {

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

    public double calcDeductible(double deductValue) {
        if ((deductValue >= 0) && (deductValue <= 5000)) {
            return deductValue;
        } else if (deductValue > 5000) {
            return 5000 + ((deductValue - 5000) * 0.1);
        } else {
            return 0.00;
        }

    }

    public double calcDiscount(double basePrice, double NCBRate, double groupRate, double directRate) {
        double ReducePriceNCB;
        double ReducePriceGroup;
        double ReducePriceDirect;
        double newBasePrice;

        OICDiscount oicDiscount = new OICDiscount();

        ReducePriceNCB = basePrice * NCBRate;
        oicDiscount.setNCBDiscountValue(ReducePriceNCB);

        newBasePrice = basePrice - ReducePriceNCB;

        ReducePriceGroup = newBasePrice * groupRate;

        oicDiscount.setGroupDiscountValue(ReducePriceGroup);

        newBasePrice = newBasePrice - ReducePriceGroup;

        ReducePriceDirect = newBasePrice * directRate;

        oicDiscount.setDirectDiscountValue(ReducePriceDirect);

        return (oicDiscount.getNCBDiscountValue() + oicDiscount.getGroupDiscountValue() + oicDiscount.getDirectDiscountValue());

    }

    public double calcVAT(double inPremiumTotal, double inStamp) {

        if ((inPremiumTotal + inStamp) >= 0) {
            return (inPremiumTotal + inStamp) * 0.07;
        }
        return 0;
    }

    public double calcStamp(double inPremiumTotal) {

        return Math.ceil(inPremiumTotal * 0.004);
    }

    public double calcMedical(String carCode, int seatNumber, int medical) {

        if (carCode == "110") {
            switch (medical) {
                case 50000:
                    return seatNumber * 50;
                case 100000:
                    return seatNumber * 19;

                case 200000:
                    return seatNumber * 25;

                case 300000:
                    return seatNumber * 28;

                case 400000:
                    return seatNumber * 29;

                case 500000:
                    return seatNumber * 30;

            }

        } else if (carCode == "320") {
            switch (medical) {
                case 50000:
                    return seatNumber * 50;

                case 100000:
                    return seatNumber * 90;

                case 200000:
                    return seatNumber * 110;

                case 300000:
                    return seatNumber * 120;

                case 400000:
                    return seatNumber * 130;

                case 500000:
                    return seatNumber * 135;

            }

        }
        return 0.0;

    }

    public boolean compareNumber(float actualNumber, double expectedNumber) {

        double diffValue =0;
        double calActualNumber = actualNumber;


        if (calActualNumber == expectedNumber) {
            return true;
        } else if(calActualNumber > expectedNumber){
            diffValue = calActualNumber - expectedNumber;
        } else if (calActualNumber < expectedNumber)
            diffValue =  expectedNumber - calActualNumber;

        if (diffValue < 2) {
            return true;
        } else {
            return false;
        }


    }
}


