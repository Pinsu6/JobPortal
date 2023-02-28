package com.help;

import java.sql.*;
import java.sql.DriverManager;

public class cp {

  

    public static Connection provider() {
          Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
           

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("cp vaalu");
        }
        return con;
    }
}
