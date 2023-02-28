package com.servlet;

import com.help.cp;
import com.help.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class addDetail {

    public boolean adddetail(detailInsert d) {
        boolean f = false;
        try {

            String q = "insert into detail(university,school,adress,city,state,zip,qualification) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setString(1, d.getUniversity());
            ps.setString(2, d.getSchool());
            ps.setString(3, d.getAdress());
            ps.setString(4, d.getCity());
            ps.setString(5, d.getState());
            ps.setString(6, d.getZip());
            ps.setString(7, d.getQualification());
           
            ps.executeUpdate();
            f = true;

        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("nay thayu");
        }

        return f;
    }
    
    public detailInsert fetchdetail(int id)
    {
       detailInsert d = null;
       
        try
        {
            //System.out.println("id is in fetch detail "+id);
            String q="select * from detail where uid=?";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setInt(1, id);
             ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                  d = new detailInsert();
                  d.setId(rs.getInt("id"));
                  d.setUniversity(rs.getString("university"));
                  d.setSchool(rs.getString("school"));
                  d.setAdress(rs.getString("adress"));
                  d.setCity(rs.getString("city"));
                  d.setState(rs.getString("state"));
                  d.setZip(rs.getString("zip"));
                  d.setQualification(rs.getString("qualification"));
                  d.setUid(rs.getInt("uid"));

            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            System.out.println("error from fetchdetail ");
        }
         return d;
    }
   
}
