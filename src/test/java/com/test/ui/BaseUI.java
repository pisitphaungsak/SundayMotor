package com.test.ui;

import com.test.page.CarSelectionPageObgects;
import com.test.page.CustomPricePageObjects;
import com.test.page.PricePageObjects;
import com.test.page.SundayHomePageObjects;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;

import java.util.concurrent.TimeUnit;

public class BaseUI {

    private static WebDriver driver = new ChromeDriver();
    public static Actions actions = new Actions(driver);

    private PricePageObjects pricePage = new PricePageObjects(driver);
    private CustomPricePageObjects customPricePage = new CustomPricePageObjects(driver);
    private CarSelectionPageObgects carSelectionPage = new CarSelectionPageObgects(driver);

    public SundayHomePageObjects sundayHomePage = new SundayHomePageObjects((driver));

    String baseURL = "https://easysunday.com/";
    String priceURL = "https://easysunday.com/pricing/2EE70665";

    String URL = "https://staging-01.easysunday.com/basic-info/car-selection";

    public String testSundayURL = "https://test.easysunday.com/";



    @BeforeTest
    public void setupSuite() {

        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        driver.navigate().to(testSundayURL);
        driver.manage().window().maximize();

    }

    @AfterTest
    public void tearDown() throws InterruptedException {
        Thread.sleep(3000);
        driver.quit();
    }
}
