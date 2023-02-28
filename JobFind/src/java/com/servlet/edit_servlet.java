/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.help.helpper;
import com.help.insert;
import com.help.msg;
import com.help.resume;
import com.help.resumeInsert;

import com.help.user;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class edit_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet edit_servlet</title>");
            out.println("</head>");
            out.println("<body>");

            String name = request.getParameter("name");
            String lname = request.getParameter("lname");
            String city = request.getParameter("city");
            String university = request.getParameter("university");
            String school = request.getParameter("school");
            String state = request.getParameter("state");
            String zip = request.getParameter("zip");
            String address = request.getParameter("address");
            String qualification = request.getParameter("qualification");
            Part part = request.getPart("image");//image 
            String imageName = part.getSubmittedFileName();//image noo naam aape
            Part resume = request.getPart("resume");//resume 
            String resumename = resume.getSubmittedFileName();//resume noo naam aape

            System.out.println("resume data  from edit_servlet " + resumename);

            HttpSession s = request.getSession();

            user u = (user) s.getAttribute("user");
            detailInsert d = (detailInsert) s.getAttribute("qualification");

            resume r = new resume();

            if (resumename != "") {
               u.setResume(resumename);
               
                resumeInsert ri = new resumeInsert();
                boolean f2 = ri.rinsert(d.getUid(), r);
                if (f2) {
                    s.setAttribute("resume", r);
                    System.out.println("inserted resume");
                }
                else
                {
                    System.out.println("resume not isnsrted");
                    
                }
            }
            if(imageName!="")
            {
            u.setPic(imageName);
            System.out.println("inside image name " + imageName);
            }
            System.out.println("outside image name " + u.getPic());
            u.setFname(name);
            u.setLname(lname);
            d.setCity(city);
            d.setUniversity(university);
            d.setSchool(school);
            d.setState(state);
            d.setZip(zip);
            d.setAdress(address);
            d.setQualification(qualification);
            d.setUid(u.getId());

            insert i = new insert();

            boolean f = i.update(u, d);

            if (f) {

                String path = getServletContext().getRealPath("") + "img/pic" + File.separator + u.getPic();
                System.out.println("image path is " + path);
                helpper.deleteFile(path);
                if (helpper.saveFile(part.getInputStream(), path)) {

                    msg msg = new msg("user profile updated", "alert-success");

                    s.setAttribute("msg", msg);
                    response.sendRedirect("home.jsp");
                } else {
                    msg msg = new msg("user profile updated but something not", "alert-danger");

                    s.setAttribute("msg", msg);
                    response.sendRedirect("home.jsp");
                }

            } else {
                out.print("not working");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
