package com.mycompany.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;

public class getGroupChat {
    private ArrayList<message> messages;
    
    public getGroupChat() throws SQLException, ClassNotFoundException, ServletException {
        try {
            Connection con = DatabaseConnection.initializeDatabase();

            Statement stmt = con.createStatement();
            ResultSet groupDetails = stmt.executeQuery("SELECT * FROM group1");
            messages = new ArrayList<message>();
            
            while(groupDetails.next()) {
                message temp = new message();
                temp.setGroupName(groupDetails.getString(2));
                temp.setContent(groupDetails.getString(3));
                temp.setSender(groupDetails.getString(4));
                temp.setTimeStamp(groupDetails.getString(5));
                messages.add(temp);
            }
        }
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException("Loading messages failed", ex);
        }
    }
    
    public ArrayList<message> getDetails() {
        return this.messages;
    }
}
