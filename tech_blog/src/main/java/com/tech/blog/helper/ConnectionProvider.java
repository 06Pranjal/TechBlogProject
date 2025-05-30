package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "123456");
                System.out.println("✅ DB Connection Successful!");
            }
        } catch (Exception e) {
            System.out.println("⛔ DB Connection Error: " + e.getMessage());
            e.printStackTrace(); // This will show the full problem
        }

        return con;
    }
}
