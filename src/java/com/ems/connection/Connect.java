/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ems.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class Connect {
    private static Connection conn;
    private Connect() {}
    
    public static Connection getConnection() {
        if (conn == null) {
            try {
                String driver = "com.mysql.jdbc.Driver";
                String connectionString = "jdbc:mysql://localhost:3306/ems-db?zeroDateTimeBehavior=convertToNull";
                String username = "root";
                String password = "123";
                
                Class.forName(driver);
                conn = DriverManager.getConnection(connectionString, username, password);
                
                System.out.println("MySQL Connection Successful");
            } catch (ClassNotFoundException e) {
                System.out.println("MySQL JDBC driver not found");
                e.printStackTrace();
            } catch (SQLException e) {
                System.out.println("Connection Failed");
                e.printStackTrace();
            }
        }
        return conn;
    }
}

