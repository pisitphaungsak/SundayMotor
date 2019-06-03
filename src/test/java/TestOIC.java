import com.test.utils.ReadExcel;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;
import utilities.OICCalc;

public class TestOIC {


    @Test(dataProvider = "V1_110_data")
    public void test1() throws Exception {
        ReadExcel excel = new ReadExcel("/Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx");

        excel.getData("SI", 200, 0);


    }

    @DataProvider(name = "V1_110_data")
    public Object[][] passData() throws Exception {

        ReadExcel config = new ReadExcel("/Users/pisit.ph/works/test/motor/src/test/Testdata/DataTest.xlsx");

        return null;
    }

    @Test
    public void testUsereturndata() {

        OICCalc testOICCalc = new OICCalc();
        String policyType = "v1";
        String carCode = "110";
        double basePrice = 7874.09;
        double carUsedRate = 1;
        double carSizeRate = 1.12;
        double carGroupRate = 1.2;
        double specialEquipRate =1;
        double driverAgeRate = 1;
        double carAgeRate = 1.26;
        double sumInsuredRate = 5.92;
        double injuryTPDamageRate = 1.011;
        double injuryTPPersonRate = 1.011;
        double injuryTPTimeRate = 1;

        Double step1Price = testOICCalc.caleBase(policyType,
                carCode,
                basePrice,
                carUsedRate,
                carSizeRate,
                carGroupRate,
                driverAgeRate,
                carAgeRate,
                sumInsuredRate,
                injuryTPDamageRate,
                injuryTPPersonRate,
                injuryTPTimeRate);

        System.out.println("Step1 Price = "+step1Price);
    }
}
