package com.test.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class UtilsExcel {

    public void readExcel(String filePath, String fileName, String sheetName) throws IOException {
        Cell cell;
        //Create an object of File class to open xlsx file

        ///Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx


        File file = new File(filePath + fileName);
        //File file =    new File("/Users/pisit.ph/works/test/motor/src/data/OIC_110.xlsx");


        //Create an object of FileInputStream class to read excel file

        FileInputStream inputStream = new FileInputStream(file);

        Workbook inputWorkbook = null;
        //Find the file extension by splitting file name in substring  and getting only extension name

        String fileExtensionName = fileName.substring(fileName.indexOf("."));

        //Check condition if the file is xlsx file

        if (fileExtensionName.equals(".xlsx")) {

            //If it is xlsx file then create object of XSSFWorkbook class

            inputWorkbook = new XSSFWorkbook(inputStream);

        } else if (fileExtensionName.equals(".xls")) {

            //If it is xls file then create object of XSSFWorkbook class

            inputWorkbook = new HSSFWorkbook(inputStream);

        }

        //Read sheet inside the workbook by its name

        Sheet inputSheet = inputWorkbook.getSheet(sheetName);

        //Find number of rows in excel file

        int rowCount = inputSheet.getLastRowNum() - inputSheet.getFirstRowNum();

        System.out.println(rowCount);

        //Create a loop over all the rows of excel file to read it

        for (int i = 0; i < rowCount + 1; i++) {

            Row row = inputSheet.getRow(i);
            System.out.println(i);
            //Create a loop to print cell values in a row

            for (int j = 1; j < row.getLastCellNum(); j++) {
                if (row.getCell(j).getCellType().toString() == "BLANK") {
                    System.out.print("blank");
                }

                if (row.getCell(j).getCellType().toString() == "STRING") {
                    System.out.print(row.getCell(j).getStringCellValue() + "|| ");
                }

                if (row.getCell(j).getCellType().toString() == "NUMBERIC") {
                    System.out.print(row.getCell(j).getNumericCellValue() + "|| ");
                }

            }


        }
        // System.out.print(row.getCell(j).getStringCellValue()+"|| ");
        //System.out.println("test");

    }

}



