package com.test.utils;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;

public class ReadExcel {

    XSSFWorkbook wbo;
    XSSFSheet wsh;


    public ReadExcel(String excelPath) throws Exception {
        //String fileName = "/Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx";


        try {
            File src = new File(excelPath);

            FileInputStream fis = new FileInputStream(src);


            wbo = new XSSFWorkbook(fis);


        } catch (Exception e) {

                System.out.println(e.getMessage());
        }


    }

    public int getRowCount(String sheetName){

        XSSFSheet wshData = wbo.getSheet(sheetName);

        int row = wshData.getLastRowNum();
        row = row +1;
        return row;

    }

    public String getData(String sheetName,int row,int col){


        wsh = wbo.getSheet(sheetName);
        DataFormatter formatter = new DataFormatter();


        Object [] [] wshData = new Object[3][2];

        try {


            String tt = formatter.formatCellValue(wsh.getRow(row).getCell(col));


            System.out.println(tt);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }


        return null;
    }
}
