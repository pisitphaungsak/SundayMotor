import com.test.utils.ReadExcel;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;
import utilities.OraUtility;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


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
    public void oracleconnTest(){
        OraUtility oratest = new OraUtility();

        Connection conn = oratest.OracleConn();

        try {
            Statement stmt = conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from car_make");
            while(rs.next())
                System.out.println(rs.getInt("ID")+"  "+rs.getString("MAKER_NAME"));

//step5 close the connection object
            //conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
