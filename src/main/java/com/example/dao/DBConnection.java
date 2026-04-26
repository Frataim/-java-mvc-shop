package com.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = System.getProperty(
            "db.url",
            "jdbc:mysql://localhost:3306/online_shop?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true"
    );
    private static final String USER = System.getProperty("db.user", "root");
    private static final String PASSWORD = System.getProperty("db.password", "password");

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ExceptionInInitializerError("MySQL JDBC driver not found: " + e.getMessage());
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
