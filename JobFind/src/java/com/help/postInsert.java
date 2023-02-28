package com.help;

import com.mysql.cj.protocol.Resultset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

public class postInsert {

    public boolean postinsert(post p, user u) {
        System.out.println("from out side try email is " + p.getCompanyemail());
        boolean f = false;
        try {
            String q1 = "select id from user where email=?";
            PreparedStatement ps1 = cp.provider().prepareStatement(q1);
            ps1.setString(1, u.getEmail());
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                u.setId(rs.getInt("id"));
                String q = "insert into post( company , title , salary , adress , city , comapnyemail , time , des ,logo,upid) values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = cp.provider().prepareStatement(q);
                ps.setString(1, p.getComapny());
                ps.setString(2, p.getTitle());
                ps.setString(3, p.getSalary());
                ps.setString(4, p.getAdress());
                ps.setString(5, p.getCity());
                ps.setString(6, p.getCompanyemail());
                ps.setString(7, p.getTime());
                ps.setString(8, p.getDesc());
                ps.setString(9, p.getLogo());
                ps.setInt(10, u.getId());
                System.out.println("from post insert email is " + p.getCompanyemail());
                ps.executeUpdate();

                f = true;
            }

        } catch (Exception e) {
            System.out.println(" from postInsert " + e);
        }

        return f;
    }

    public List<post> getjob() {
        List<post> list1 = null;

        post p = null;

        try {

            list1 = new ArrayList<post>();

            String q = "select * from post where status='active' order by date desc ";

            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                p = new post();
                p.setId(rs.getInt(1));
                p.setComapny(rs.getString(2));
                p.setTitle(rs.getString(3));
                p.setSalary(rs.getString(4));
                p.setAdress(rs.getString(5));
                p.setCity(rs.getString(6));
                p.setCompanyemail(rs.getString(7));
                p.setTime(rs.getString(8));
                p.setDesc(rs.getString(9));
                p.setLogo(rs.getString(10));
                p.setDate(rs.getDate(11));
                p.setUpid(rs.getInt(12));

                list1.add(p);

            }

        } catch (Exception e) {
            System.out.println("inside post get " + e);
        }
        return list1;

    }

    public List<user> getuser(int upid) {
        List<user> list = null;

        user u = null;

        try {

            list = new ArrayList<user>();
            String q = "select fname,profile_pic from user where id='" + upid + "'";

            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new user();
                u.setFname(rs.getString(1));
                u.setPic(rs.getString(2));
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public post getJobById(int id) {
        post p = null;
        try {
            String q = "select * from post where id='" + id + "'  order by date desc";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new post();
                p.setId(rs.getInt(1));
                p.setComapny(rs.getString(2));
                p.setTitle(rs.getString(3));
                p.setSalary(rs.getString(4));
                p.setAdress(rs.getString(5));
                p.setCity(rs.getString(6));
                p.setCompanyemail(rs.getString(7));
                p.setTime(rs.getString(8));
                p.setDesc(rs.getString(9));
                p.setLogo(rs.getString(10));
                p.setDate(rs.getDate(11));
                p.setUpid(rs.getInt(12));

            }

        } catch (Exception e) {
        }
        return p;

    }

    public request Insertrequest(int id) {

        request r = null;

        try {

            String q = "select id,fname from user where id='" + id + "'";

            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                r = new request();
                r.setUrid(rs.getInt(1));
                r.setName(rs.getString(2));
                String q1 = "insert into request( name , urid) values(?,?)";
                System.out.println("from insert request " + r.getName());
                PreparedStatement ps1 = cp.provider().prepareStatement(q1);
                ps1.setString(1, r.getName());
                ps1.setInt(2, r.getUrid());
                ps1.executeUpdate();
            }
        } catch (Exception e) {
            System.out.println("from request " + e);
        }
        return r;
    }

    public List<request> getRequest(int urid) {
        List list = null;
        try {
            list = new ArrayList<request>();
            request r = new request();

            String q = "select * from request;";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                r.setId(rs.getInt(1));
                r.setName(rs.getString(2));
                r.setUrid(rs.getInt(3));
                list.add(r);
            }

        } catch (Exception e) {
            System.out.println("from get request " + e);
        }
        return list;
    }

    public boolean post_update(post p, int id) {
        boolean f = false;
        String q;
        try {
            if (p.getLogo() == null) {
                q = "update post set company='" + p.getComapny() + "',title='" + p.getTitle() + "',salary='" + p.getSalary() + "',adress='" + p.getAdress() + "',city='" + p.getCity() + "',comapnyemail='" + p.getCompanyemail() + "',time='" + p.getTime() + "',des='" + p.getDesc() + "' where id='" + id + "'";
                System.out.println("in post if statment update logo is null " + p.getLogo());
            } else {
                System.out.println("in else part logo is not null " + p.getLogo());
                q = "update post set company='" + p.getComapny() + "',title='" + p.getTitle() + "',salary='" + p.getSalary() + "',adress='" + p.getAdress() + "',city='" + p.getCity() + "',comapnyemail='" + p.getCompanyemail() + "',time='" + p.getTime() + "',des='" + p.getDesc() + "',logo='" + p.getLogo() + "' where id='" + id + "'";
            }
            Statement st = cp.provider().createStatement();
            st.executeUpdate(q);
            f = true;
        } catch (Exception e) {
            System.out.println("from post_update " + e);
        }
        return f;
    }

    public boolean post_delete(int id) {
        boolean f = false;
        try {
            String q = "update post set status='deactive' where id='" + id + "'";
            Statement st = cp.provider().createStatement();
            st.executeUpdate(q);
            f = true;
        } catch (Exception e) {
        }
        return f;
    }

    public boolean apply(apply a) {
        boolean f = false;
        try {
            String q1 = "select upid from post where id ='" + a.getPost_id() + "'";
            PreparedStatement ps1 = cp.provider().prepareStatement(q1);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                a.setUpload_id(rs.getInt(1));
            }
            String q = "insert into apply (post_id,user_id,upload_id) values(?,?,?)";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setInt(1, a.getPost_id());
            ps.setInt(2, a.getUser_id());
            ps.setInt(3, a.getUpload_id());
            ps.executeUpdate();
            f = true;
        } catch (Exception e) {
            System.out.println("from apply " + e);
        }
        return f;
    }

    public post applypost(apply a) {
        
        post p = null;
        try {
            String q = "select title from post where id='" + a.getPost_id() + "'";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new post();
                p.setTitle(rs.getString(1));
                

            }

        } catch (Exception e) {
            System.out.println("from apply post "+e);
        }
        return p;
    }
    
    
    public boolean remover(int id)
    {
        boolean f=false;
        try {
            String  q="delete from apply where id='"+id+"'";
            Statement st = cp.provider().createStatement();
            st.executeUpdate(q);
            f = true;
        } catch (Exception e) {
            System.out.println("from remover "+e);
        }
        return f;
    }
    
    public apply getapply(int id)
    {
        
        apply a=null;
        boolean f=false;
        try {
            String q = "select user_id,post_id from apply where user_id ='"+id+"'";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            System.out.println("from getapply");
            a=new apply();
            
            while(rs.next())
            {
                a.setUser_id(rs.getInt(1));
                a.setPost_id(rs.getInt(2));
                System.out.println("from while "+a.getUser_id());
                f=true;
                
            }
        } catch (Exception e) {
            System.out.println("from getapply "+e);
        }
        
        return a;
    }
 
    public List<post> getjobbybookmark(int id) {
        List<post> list1 = null;

        post p = null;

        try {

            list1 = new ArrayList<post>();

            String q = "select * from post where id='"+id+"'";

            PreparedStatement ps = cp.provider().prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                p = new post();
                p.setId(rs.getInt(1));
                p.setComapny(rs.getString(2));
                p.setTitle(rs.getString(3));
                p.setSalary(rs.getString(4));
                p.setAdress(rs.getString(5));
                p.setCity(rs.getString(6));
                p.setCompanyemail(rs.getString(7));
                p.setTime(rs.getString(8));
                p.setDesc(rs.getString(9));
                p.setLogo(rs.getString(10));
                p.setDate(rs.getDate(11));
                p.setUpid(rs.getInt(12));

                list1.add(p);

            }

        } catch (Exception e) {
            System.out.println("inside post get " + e);
        }
        return list1;

    }
}
