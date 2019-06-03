package com.test.utils;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;


public class ReadExcelData {

    public static void main(String[] args) throws Exception {

        String fileName = "/Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx";


        File src = new File(fileName);

        FileInputStream fis = new FileInputStream(src);


        XSSFWorkbook wb = new XSSFWorkbook(fis);

        XSSFSheet SISheet = wb.getSheet("SI");

        String data0 = SISheet.getRow(0).getCell(1).getStringCellValue();

        System.out.println(data0);




        wb.close();



    }
}
