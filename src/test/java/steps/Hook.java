package steps;

import base.BaseWebUI;

import com.sun.xml.xsom.impl.util.Uri;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import pages.SundayAdminPage;

import javax.print.DocFlavor;
import java.net.MalformedURLException;
import java.net.URL;



public class Hook extends BaseWebUI {

    private BaseWebUI base;

    public Hook(BaseWebUI base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() throws MalformedURLException {
        //Arrange
     //   base.Driver = new ChromeDriver();

        ChromeOptions cap = new ChromeOptions();
        cap.setCapability("version","");
        cap.setCapability("platform","LINUX");

        base.Driver = new RemoteWebDriver(new URL("http://localhost:4446/wd/hub"), cap);


    }

    @After
    public void TearDownTest(Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()){
            System.out.println(scenario.getName() + " is failed");
           // base.screenCapture();
        }
        Thread.sleep(2000);
        base.Driver.quit();

    }
}
