package com.test.oic;

import utilities.OICDiscount;


public class UtilsOIC {


    public double caleBase(String carCode,
                           double basePrice,
                           double carUsedRate,
                           double carSizeRate,
                           double driverAgeRate,
                           double carAgeRate,
                           double sumInsuredRate,
                           double carGroupRate,
                           double injuryTPPersonRate,
                           double injuryTPTimeRate,
                           double injuryTPDamageRate
    ) {

        if (carCode == "320") {
            carGroupRate = 1;

        }
/*

        if (policyType =="v52"|| policyType =="v53") {
            System.out.println();
        }
*/
        return 0;

    }


}
