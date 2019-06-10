package com.test.oic;

import org.testng.annotations.DataProvider;

public class OICValidateSumInsure extends BaseOIC {


    @DataProvider(name = "invalidSumInsure110TestData")
    public Object[][] invalidSumInsure110TestData() {
        return new Object[][]{
                {8415.55, "v1", "320", 2.5, 0, 13, 150000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 200000, 0, 1.00, 0.92, 1.00, 0.95, 1.10, 1.00, 1.0095, 1.00, 1.008, 600, 270, 1000}
        };
    }

    @DataProvider(name = "invalidSumInsure320TestData")
    public Object[][] invalidSumInsure320TestData() {
        return new Object[][]{
                {8415.55, "v1", "320", 2.5, 0, 13, 150000, 3, 500000, 10000000, 1000000, 3, 100000, 100000, 200000, 0, 1.00, 0.92, 1.00, 0.95, 1.10, 1.00, 1.0095, 1.00, 1.008, 600, 270, 1000}
        };
    }
}
