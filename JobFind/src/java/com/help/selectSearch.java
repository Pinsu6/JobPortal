/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.help;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prince
 */
public class selectSearch {

    public List<post> getSearch(String title, String city) {
        List list = null;
        post p = null;
        try {
            list = new ArrayList<post>();

             String q = "select * from post where title='"+title+"' and city='"+city+"'";
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
                list.add(p);
                System.out.println("frommm get search try "+p.getTitle());
            }

        } catch (Exception e) {
            System.out.println("from select search "+e);
        }
        return list;
    }
}
