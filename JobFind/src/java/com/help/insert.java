package com.help;

import com.servlet.addDetail;
import com.servlet.detailInsert;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class insert {

    boolean f = false;

    public boolean add(user u) {
        try {

            String q = "insert into user(fname,lname,email,password) values(?,?,?,?)";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setString(1, u.getFname());
            ps.setString(2, u.getLname());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());

            ps.executeUpdate();

            ///////////////
            f = true;

        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("nay thayu");
        }

        return f;
    }

    public boolean getid(String email, detailInsert d) {
        user u = new user();

        boolean f = false;
        try {
            String q1 = "select id from user where email=?";
            PreparedStatement ps1 = cp.provider().prepareStatement(q1);
            ps1.setString(1, email);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                u = new user();

                u.setId(rs.getInt("id"));
                // System.out.println("get id is "+u.getId());
                String q = "insert into detail(university,school,adress,city,state,zip,qualification,uid) values(?,?,?,?,?,?,?,?)";
                PreparedStatement ps = cp.provider().prepareStatement(q);
                ps.setString(1, d.getUniversity());
                ps.setString(2, d.getSchool());
                ps.setString(3, d.getAdress());
                ps.setString(4, d.getCity());
                ps.setString(5, d.getState());
                ps.setString(6, d.getZip());
                ps.setString(7, d.getQualification());
                ps.setInt(8, u.getId());

                ps.executeUpdate();

                f = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return f;
    }

    public boolean check_user(String email) {
        boolean f = false;
        try {
            Statement st = cp.provider().createStatement();
            String q = "select * from user where email=?";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                return f;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        f = true;
        return f;
    }

    public user login(String email, String password) {
        user u = null;
        try {

            Statement st = cp.provider().createStatement();
            String q = "select * from user where email=? and password=?";

            PreparedStatement ps = cp.provider().prepareStatement(q);

            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                u = new user();
                u.setId(rs.getInt("id"));
                u.setFname(rs.getString("Fname"));
                u.setLname(rs.getString("lname"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setPic(rs.getString("profile_pic"));
                u.setResume(rs.getString("resume"));
                System.out.println("from login " + u.getPic());
                System.out.println("from login " + u.getResume());

            }

        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("nay thayu");
        }
        return u;
    }

    public boolean update(user u, detailInsert d) {
        boolean f = false;

        try {

            if (u.getPic() == "") {
                String q = "update user set   fname='" + u.getFname() + "' , lname='" + u.getLname() + "' where id='" + u.getId() + "'";
                System.out.println("img is null");
                Statement st = cp.provider().createStatement();
                st.executeUpdate(q);

                f = true;
            } else {
                String q = "update user set  profile_pic='" + u.getPic() + "', fname='" + u.getFname() + "' , lname='" + u.getLname() + "' where id='" + u.getId() + "'";
                System.out.println("img is not null");
                Statement st = cp.provider().createStatement();

                st.executeUpdate(q);

                f = true;
            }
            if (u.getResume() == "") {
                String q2 = "update user set   fname='" + u.getFname() + "' , lname='" + u.getLname() + "' where id='" + u.getId() + "'";
                System.out.println("resume is null" + u.getResume());
                Statement st = cp.provider().createStatement();

                st.executeUpdate(q2);
                f = true;
            } else if (u.getResume() != "") {
                String q2 = "update user set   fname='" + u.getFname() + "' , lname='" + u.getLname() + "' , resume='" + u.getResume() + "'  where id='" + u.getId() + "'";
                System.out.println("resume is not null" + u.getResume());
                Statement st = cp.provider().createStatement();

                st.executeUpdate(q2);

                f = true;
            }

            String q1 = "update detail set university='" + d.getUniversity() + "',school='" + d.getSchool() + "',adress='" + d.getAdress() + "',city='" + d.getCity() + "',state='" + d.getState() + "',zip='" + d.getZip() + "',qualification='" + d.getQualification() + " 'where uid='" + d.getUid() + "'";
            Statement st = cp.provider().createStatement();

            st.executeUpdate(q1);

            f = true;

        } catch (Exception e) {
            System.out.println(e);
        }
        return f;
    }
    
    public void insertb(int buid, int pbid)
    {
        try
        {
         String q="insert into bookmark (buid,pbid) values(?,?)";
           PreparedStatement pb = cp.provider().prepareStatement(q);
           pb.setInt(1, buid);
           pb.setInt(2, pbid);
           pb.executeUpdate();
        }
        catch(Exception e)
        {
            System.out.println(e+"from insertb");
        }
    }
}
