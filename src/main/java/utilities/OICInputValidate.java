package utilities;

public class OICInputValidate {

    public boolean validateDiscountOptions(int disGroup, int disNCB, int disDirect) {

        if (disGroup != 0 || disGroup != 0.1) {
            return false;
        }

        return true;
    }
}
