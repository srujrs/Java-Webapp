package com.mycompany.data;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;

public class newMessage {
    public newMessage(String _username,String _message,String _timeStamp) throws ServletException {
        try {
            Connection con = DatabaseConnection.initializeDatabase();
            Statement stmt = con.createStatement();
            
            String query = "INSERT INTO group1( message, senderId, timeStamp)" +
                   "VALUES ('" + _message + "'," +
                            "'" + _username + "'," +
                            "'" + _timeStamp + "')";
            int rowCount = stmt.executeUpdate(query);
        }
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException("inserting messages failed", ex);
        }
    }
}
