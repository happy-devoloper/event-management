/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author light
 */
public class DBUtils {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://ec2-34-242-8-97.eu-west-1.compute.amazonaws.com:5432/df3n5hked56o4k?sslmode=require"; //encrypt=true;trustServerCertificate=true;";
        conn = DriverManager.getConnection(url, "xkzgjbnhefjign", "5fad21744f1f3750c9cb0ba80e1dd3f1f2adf579583b72a2a98dd34c017438be");
        return conn;
    }
}
