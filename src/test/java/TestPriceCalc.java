import org.testng.annotations.Test;
import com.test.utils.*;

import java.io.IOException;


public class TestPriceCalc {
    UtilsExcel imp = new UtilsExcel();

    @Test
    public void testPrice1() throws IOException {
    String filePath ="/Users/pisit.ph/works/test/motor/src/data/";
    String fileName ="OIC_110.xlsx" ;
    String sheetName ="V5";

        imp.readExcel(filePath,fileName,sheetName);


    }


}
