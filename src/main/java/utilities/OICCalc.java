package utilities;

public class OICCalc {
    public static final double driverPARate = 0.003;
    public static final double passengerPARate = 0.0015;
    public static final double driverBailBondRate = 0.005;

    private double getPA(int seatNumber, int LifeLoss) {
        int driverSeat = 1;
        int passengerSeat = 0;

        if (seatNumber == 0) {
            return 0.0;
        } else if (seatNumber == 1) {
            return driverPARate * driverSeat * LifeLoss;
        } else if (seatNumber > 1) {

            return (driverSeat * driverSeat * LifeLoss) + (passengerPARate * passengerSeat * LifeLoss);
        }
        return 0.0;
    }

    private double getMedical(String carCode, int seatNumber, int medical) {

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

    private double getBailBond(int seatNumber, int bailBondValue) {

        if (seatNumber > 0) {
            return driverBailBondRate * bailBondValue;
        } else {
            return 0.0;
        }
    }

    private double getDeductible(double deductValue) {
        if ((deductValue >= 0) && (deductValue <= 5000)) {
            return deductValue * 0.1;
        } else if (deductValue > 5000) {
            return 5000 + ((deductValue - 5000) * 0.01);
        } else {
            return 0.00;
        }

    }

    private OICDiscount getDiscount(double basePrice, double NCBRate, double groupRate, double directRate) {
        OICDiscount oicDiscount = new OICDiscount();

        oicDiscount.setNCBDiscountValue(basePrice * NCBRate);

        oicDiscount.setGroupDiscountValue((basePrice - oicDiscount.getNCBDiscountValue()) * groupRate);

        oicDiscount.setDirectDiscountValue((basePrice - oicDiscount.getNCBDiscountValue() + oicDiscount.getGroupDiscountValue()) * directRate);

        return oicDiscount;

    }

    public double caleBase(String policyType,
                           String carCode,
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

        double basePriceResult = 0;
        double premiumTotal = 0;
        double addTotal = 0;
        double discountTotal;


        if (carCode == "320") {
            carGroupRate = 1;

        }


        if (policyType =="v52"|| policyType =="v53") {
            System.out.println();
        }


        basePriceResult = basePrice
                * carUsedRate
                * carSizeRate
                * carGroupRate
                * driverAgeRate
                * carAgeRate
                * sumInsuredRate
                * injuryTPDamageRate
                * injuryTPPersonRate
                * injuryTPTimeRate;
        return 0;
    }


}


