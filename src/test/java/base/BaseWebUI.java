package base;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Wait;

import java.io.File;
import java.io.IOException;


public class BaseWebUI {
    public WebDriver Driver;

    //URL
    public String motorBaseURL = "https://motor-staging.easysunday.com/motor";

    public String baseURL = "https://staging-02.easysunday.com/";

    //public String baseURL = "https://staging-02.easysunday.com/";

    public String adnminBaseURL = "https://admin-staging-02.easysunday.com/";


    public String testUserName = "pisit.ph@easysunday.com";
    public String testPassword = "Welcome1";

    public String grabHomePage_prod = "https://grab.easysunday.com";

    public String grabHomePage_test = "https://grab.test.easysunday.com";


    public void screenCapture(WebDriver driver, String filePath, String fileName) throws InterruptedException {

        Thread.sleep(2000);
        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);

        try {

            FileUtils.copyFile(src, new File(filePath + fileName));
        } catch (IOException e) {
            System.out.println(e.getMessage());

        }
    }


}
