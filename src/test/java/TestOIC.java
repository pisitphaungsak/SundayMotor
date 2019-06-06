import com.test.utils.ReadExcel;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

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

}
