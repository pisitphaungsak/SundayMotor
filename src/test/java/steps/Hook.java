package steps;

import base.BaseUtil;
import base.BaseWebUI;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import org.openqa.selenium.chrome.ChromeDriver;
import utilities.RestAssuredExtenstion;

public class Hook extends BaseWebUI {


    private BaseWebUI base;

    public Hook(BaseWebUI base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() {
        //Arrange
        System.out.println("Open Chrome browser");
        //base.Driver = new ChromeDriver();
        base.StepInfo = "Chrome";

    }

    @After
    public void TearDownTest(Scenario scenario) {

        if (scenario.isFailed()) {
            System.out.println(scenario.getName());
        }
        System.out.println("Ens of test : MOCK");

    }
}
