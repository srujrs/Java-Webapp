package com.mycompany.data;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        // Database name to access 
        String dbName = "newdb"; 
        String dbUsername = "root"; 
        String dbPassword = "sruj 9482941506"; 
  
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
        return con; 
    } 
}
