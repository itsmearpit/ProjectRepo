/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Awesome
 */
import java.sql.*;
public class ReadExcel {
    
    public static void main(String a[])  throws ClassNotFoundException,SQLException
    {
        Class.forName("jdbc:odbc:JdbcOdbcDriver");
        System.out.println("Loaded");
        Connection con =DriverManager.getConnection("jdbc:odbc:test");
        System.out.println("Connected");
    }
}
