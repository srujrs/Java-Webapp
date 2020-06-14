package com.mycompany.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;

public class getGroupMembers {
    private ArrayList<String> members;
    public getGroupMembers(String groupName) throws SQLException, ClassNotFoundException, ServletException {
        try {
            Connection con = DatabaseConnection.initializeDatabase();

            Statement stmt = con.createStatement();
            ResultSet groupDetails = stmt.executeQuery("SELECT members FROM groupmemberlist WHERE groupname = " + groupName);
            ArrayList<String> temp = new ArrayList<String>();
            for(String m : groupDetails.getString(1).split(",")) {
                temp.add(m);
            }
            this.setMembers(temp);
            
        }
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException("Loading messages failed", ex);
        }
    }

    public ArrayList<String> getMembers() {
        return members;
    }

    public void setMembers(ArrayList<String> members) {
        this.members = members;
    }
}
