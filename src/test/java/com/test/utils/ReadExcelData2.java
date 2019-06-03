package com.test.utils;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;


public class ReadExcelData2 {

    public static void main(String[] args) throws Exception {

        String fileName = "/Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx";


        File src = new File(fileName);

        FileInputStream fis = new FileInputStream(src);


        XSSFWorkbook wb = new XSSFWorkbook(fis);

        XSSFSheet SISheet = wb.getSheet("SI");

        int rowCount = SISheet.getLastRowNum();

        System.out.println(rowCount);

        for (int i = 1; i < rowCount; i++) {

         Double data1 =   SISheet.getRow(i).getCell(0).getNumericCellValue();



         System.out.println(data1);
        }


        wb.close();


    }
}
