package cn.fon.web;

import cn.fon.bean.Leave;
import cn.fon.service.DownleService;
import com.alibaba.excel.EasyExcel;
import lombok.SneakyThrows;
import org.apache.commons.codec.Charsets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/22 17:08
 **/
@RestController
@RequestMapping(value = "/leave")
public class DownleController {

        @Autowired
        private DownleService downleService;

        /**
         * 导出Excel
         *//*
        public void exportExcel() {
            ExcelWriter writer = null;
            OutputStream out = null;
            try {
                List downleList = downleService.findAll();
                String fileName = "用户信息表格";
                out = new FileOutputStream("D:\\desktop" + fileName + ".xlsx");
                writer = new ExcelWriter(out, ExcelTypeEnum.XLSX);
                Sheet sheet = new Sheet(1,0, Leave.class) {
                };
                sheet.setSheetName("用户信息");
                writer.write(downleList, sheet);
                out.flush();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (writer != null) {
                    writer.finish();
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        *//**
         * 下载Excel
         *
         * @param response
         *//*
        @RequestMapping(value = "/uploadExcel")
        public void uploadExcel(HttpServletResponse response) {
            ExcelWriter writer = null;
            OutputStream out = null;
            try {
                List downleList = downleService.findAll();
                out = response.getOutputStream();
                writer = new ExcelWriter(out, ExcelTypeEnum.XLSX);
                String fileName = "用户信息表格";
                Sheet sheet = new Sheet(1, 0, Leave.class) {
                };
                sheet.setSheetName("用户信息");
                writer.write(downleList, sheet);
                response.setCharacterEncoding("utf-8");
                response.setContentType("application/vnd.ms-excel;charset=utf-8");
                response.setHeader("Content-Disposition", "attachment;filename=" + new String((fileName + ".xlsx").getBytes(), "ISO8859-1"));
                out.flush();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (writer != null) {
                    writer.finish();
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }*/



    /**
     * 导出用户
     */
    @SneakyThrows
    @GetMapping("export")
    public void exportLevel(HttpServletResponse response) {
        List<Leave> list = downleService.findAll();
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding(Charsets.UTF_8.name());
        String fileName = URLEncoder.encode("请假数据导出", Charsets.UTF_8.name());
        response.setHeader("Content-disposition", "attachment;filename=" + fileName + ".xlsx");
        EasyExcel.write(response.getOutputStream(), Leave.class).sheet("请假数据表").doWrite(list);
    }


}
