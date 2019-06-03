package utilities;

public class OICDiscount {
    public double NCBDiscountValue;
    public double GroupDiscountValue;
    public double DirectDiscountValue;


    public double getGroupDiscountValue() {
        return GroupDiscountValue;
    }

    public void setGroupDiscountValue(double groupDiscountValue) {
        GroupDiscountValue = groupDiscountValue;
    }

    public double getDirectDiscountValue() {
        return DirectDiscountValue;
    }

    public void setDirectDiscountValue(double directDiscountValue) {
        DirectDiscountValue = directDiscountValue;
    }

    public double getNCBDiscountValue() {
        return NCBDiscountValue;
    }

    public void setNCBDiscountValue(double NCBDiscountValue) {
        this.NCBDiscountValue = NCBDiscountValue;
    }
}
