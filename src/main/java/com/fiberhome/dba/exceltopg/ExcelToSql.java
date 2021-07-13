package com.fiberhome.dba.exceltopg;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;

/**
 * @description: excel中表结构生成pg建表语句
 * @author: ws
 * @time: 2020/9/7 15:18
 */
public class ExcelToSql {
    private static final Logger LOGGER = LoggerFactory.getLogger(ExcelToSql.class);
    private static final String VALUE_Y = "Y";
    private static final String VALUE_N = "N";

    public static void main(String[] args) {
//        String in_excel_name = System.getProperty("user.dir") + File.separator + "ACE微信专项表设计_v3.0.xls";
        String in_excel_name = args[0];

        String out_txt_name = System.getProperty("user.dir") + File.separator + "result_table.sql";
        File in_file = new File(in_excel_name);
        File out_file = new File(out_txt_name);

//        int in_sheet_index = 2;
        int in_sheet_index = Integer.parseInt(args[1]);

        readExcelToSql(in_file,out_file, in_sheet_index);

    }

    private static void readExcelToSql(File in_file, File out_file, int in_sheet_index) {
        InputStream is = null;
        OutputStream os = null;

        try {
            is = new BufferedInputStream(new FileInputStream(in_file));
            os = new BufferedOutputStream(new FileOutputStream(out_file));
            Workbook wb = Workbook.getWorkbook(is); //读取excel工作薄
            StringBuilder sb = new StringBuilder();

            int sheetsNum = wb.getNumberOfSheets();
            //获取每个sheet页
            for (int i = in_sheet_index; i < sheetsNum; i++) {
                Sheet sheet = wb.getSheet(i);
                String tableName = sheet.getCell(1, 0).getContents();
                sb.append("create table ").append(tableName).append("\r\n")
                        .append("(").append("\r\n");
                //从第三行开始获取字段、数据类型、字段长度、是否主键
                //去掉最后一行“注意：xxxx”
                for (int j = 3; j < sheet.getRows()-1; j++) {
                    String fieldName = sheet.getCell(0, j).getContents();
                    String fieldType = sheet.getCell(1, j).getContents();
                    String nullValue = sheet.getCell(3, j).getContents();
                    String primaryKey = sheet.getCell(4, j).getContents();
                    if(StringUtils.isNotBlank(fieldName) && primaryKey.equalsIgnoreCase(VALUE_Y)) {
                        sb.append(fieldName).append(" ").append(fieldType).append(" primary key not null,").append("\r\n");
                    }else if (StringUtils.isNotBlank(fieldName) && nullValue.equalsIgnoreCase(VALUE_N)) {
                        sb.append(fieldName).append(" ").append(fieldType).append(" not null,").append("\r\n");
                    } else if(StringUtils.isNotBlank(fieldName)) {
                        sb.append(fieldName).append(" ").append(fieldType).append(",").append("\r\n");
                    } else {
                        //删除最后一个","
                        sb.deleteCharAt(sb.length()-3);
                        break;
                    }

                }
                sb.append(");").append("\r\n").append("\r\n");

            }
            byte[] msg = sb.toString().getBytes();
            os.write(msg);

            LOGGER.info("=================ok=================");

        } catch (IOException e) {
            LOGGER.error(e.getMessage(), e);
        } catch (BiffException e) {
            LOGGER.error(e.getMessage(), e);
        } finally {
            //关闭流
            try {
                if (null != os) {
                    os.close();
                }
            } catch (IOException e) {
                LOGGER.error(e.getMessage(), e);
            }
            try {
                if (null != is) {
                    is.close();
                }
            } catch (IOException e) {
                // TODO Auto-generated catch block
                LOGGER.error(e.getMessage(), e);
            }
        }

    }


}
