package com.help;

import com.mysql.cj.protocol.Resultset;
import com.servlet.detailInsert;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class resumeInsert {

    public boolean rinsert(int id, resume r) {
        boolean f = false;
        try {
            String q = "select id from detail where uid=?";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                detailInsert d = new detailInsert();
                d.setId(rs.getInt("id"));
                String s = "select did from resume where did=?";
                PreparedStatement ps2 = cp.provider().prepareStatement(s);
                ps2.setInt(1, d.getId());
                ResultSet rs2 = ps2.executeQuery();
                if (rs2.next()) {
                    String u = "update resume set   Resume='" + r.getResume() + "' where did='" + d.getId() + "'";
                    Statement st = cp.provider().createStatement();
                    st.executeUpdate(u);

                    System.out.println("into the rs.netx");
                    f = true;
                } else {
                    System.out.println("out of rs.next");

                    String q1 = "insert into resume (Resume,did) values(?,?)";

                    PreparedStatement ps1 = cp.provider().prepareStatement(q1);
                    ps1.setString(1, r.getResume());
                    ps1.setInt(2, d.getId());
                    ps1.executeUpdate();
                    System.out.println("resume is " + r.getResume());
                    System.out.println("in the rinsert d.getid is " + d.getId());
                    f = true;
                }

            }

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("from resumeInsert");
        }
        System.out.println("f is " + f);
        return f;
    }

    public resume fetchresume(int did) {
        resume r = null;
        try {
            //System.out.println("id is in fetch detail "+id);
            String q = "select * from resume where did=?";
            PreparedStatement ps = cp.provider().prepareStatement(q);
            ps.setInt(1, did);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                r = new resume();

                r.setResume(rs.getString("Resume"));
                r.setDid(rs.getInt("did"));
                System.out.println("in fetchresume " + r.getResume());

            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("error from fetchresume");
        }
        return r;
    }
}
