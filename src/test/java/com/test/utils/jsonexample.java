package com.test.utils;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class jsonexample {

    @Test
    public void jsonTest() {

        JsonParser parser = new JsonParser();

        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("resources/discount.json");


        Reader reader = new InputStreamReader(inputStream);

        JsonElement rootElement = parser.parse(reader);

        Assert.assertNotNull(rootElement);

    }
}