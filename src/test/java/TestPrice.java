import com.test.page.PricePageObjects;
import com.test.page.CustomPricePageObjects;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import java.util.concurrent.TimeUnit;

public class TestPrice {

    private static WebDriver driver = new ChromeDriver();
    private static Actions actions = new Actions(driver);

    private PricePageObjects pricePage = new PricePageObjects(driver);

    private CustomPricePageObjects customPricePage = new CustomPricePageObjects(driver);

    String baseURL = "https://easysunday.com/";
    String priceURL = "https://easysunday.com/pricing/2EE70665";


    @BeforeTest
    public void setupSuite() {

        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        driver.navigate().to(priceURL);
        driver.manage().window().maximize();

    }

    @AfterTest
    public void tearDown() throws InterruptedException {
        Thread.sleep(3000);
        driver.quit();
    }

    @Test
    public void testDualPartiesPrice() {
        //Assign
        String expectedPrice = "฿5,764";

        //Act
        String actualPrice = pricePage.txtDualPartiesPrice.getText();
        System.out.println("actualPrice = " + actualPrice);

        //Assert
        Assert.assertEquals(actualPrice, expectedPrice);

    }

    @Test
    public void testThirdPartiesPrice() {
        //Assign
        String expectedPrice = "฿2,334";

        //Act
        String actualPrice = pricePage.txtThirdPartiesPrice.getText();

        //Assert
        Assert.assertEquals(actualPrice, expectedPrice);

    }

    @Test
    public void testComprehensivePartiesPrice() {
        //Assign
        String expectedPrice = "฿13,486";


        //Act
        String actualPrice = pricePage.txtComprehensivePartiesPrice.getText();

        //Assert
        Assert.assertEquals(actualPrice, expectedPrice);
    }

    @Test
    public void testOpenCustomPriceThird() throws InterruptedException {
        //Assign
        pricePage.thirdPartiesPlanBtn.click();
        customPricePage.cbFireAndLost.click();
        Thread.sleep(1000);

        //Act
        driver.navigate().refresh();
        actions.moveToElement(customPricePage.cbFireAndLost);
        actions.perform();

        //Assert
        Assert.assertTrue(customPricePage.cbFireAndLost.isSelected());

    }

    @Test
    public void testThirdPartySelectedMultipleAddOn() throws InterruptedException {
        //Assign
        pricePage.thirdPartiesPlanBtn.click();
        if (customPricePage.cbFireAndLost.isSelected()) {
            customPricePage.cbFireAndLost.click();
        }

        if (customPricePage.cbFloodDamage.isSelected()) {
            customPricePage.cbFloodDamage.click();
        }


        customPricePage.cbFireAndLost.click();
        Thread.sleep(1000);
        customPricePage.cbFloodDamage.click();
        Thread.sleep(1000);

        //Act
        driver.navigate().refresh();

        //Assert
        Assert.assertTrue(customPricePage.cbFireAndLost.isSelected());

        Assert.assertTrue(customPricePage.cbFloodDamage.isSelected());



    }

    

}
