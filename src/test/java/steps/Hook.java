package steps;

import base.BaseWebUI;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.chrome.ChromeDriver;
import pages.SundayAdminPage;

import java.util.concurrent.TimeUnit;


public class Hook extends BaseWebUI {

    private BaseWebUI base;

    public Hook(BaseWebUI base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() {
        //Arrange
        base.Driver = new ChromeDriver();
    }

    @After
    public void TearDownTest(Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()){
            System.out.println(scenario.getName() + " is failed");
        }
        Thread.sleep(10000);
        base.Driver.quit();

    }
}
