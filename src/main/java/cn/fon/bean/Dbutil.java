package cn.fon.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//进行大批数据的插入，插入到数据库，模拟造假数据

public class Dbutil {

    private static String url = "jdbc:mysql://127.0.0.1:3306/leave_sys?characterEncoding=utf8&useSSL=false";
    private static String user = "root";
    private static String pwd = "123456";

    public static Connection getConn() throws Exception {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pwd);
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    public static void main(String[] args) throws Exception {
        Connection conn = getConn();
        Statement stmt = conn.createStatement();
        for (int i = 46; i <= 88; i++) {
            String sql = "insert into sys_student (id,stuID,classID,stuName,sex,address,stuTel,contact,contactTel)values(";
            sql +="'"+ i + "',";
            sql +="'s"+ 2022+i + "',";
            sql +="'c"+ 22+i + "',";
            sql +="'"+ "吴彦祖"+ i+ "',";
            sql +="'"+ "男" + "',";
            sql +="'"+ "广州珠江帝景苑" + "',";
            sql +="'"+ i+"222222222" + "',";
            sql +="'"+ "贾斯汀"+i + "',";
            sql +="'"+ i + "9999'";
            sql += ")";
            stmt.executeUpdate(sql);
        }


    }
}