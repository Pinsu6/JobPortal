/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.help.helpper;
import com.help.msg;
import com.help.post;
import com.help.postInsert;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Prince
 */
@MultipartConfig
public class Editpost_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Editpost_servlet</title>");
            out.println("</head>");
            out.println("<body>");
            int id = Integer.parseInt(request.getParameter("id"));
            String companyName = request.getParameter("companyname");
            String title = request.getParameter("title");
            String salary = request.getParameter("salary");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String email = request.getParameter("email");
            String time = request.getParameter("time");
            String desc = request.getParameter("desc");
            Part logo = request.getPart("logo");//logo 
            String logoname = logo.getSubmittedFileName();
           
            HttpSession session = request.getSession();

            postInsert p1 = new postInsert();
            post p =new post();
            p.setComapny(companyName);
            p.setTitle(title);
            p.setSalary(salary);
            p.setAdress(address);
            p.setCity(city);
            p.setCompanyemail(email);
            p.setTime(time);
            p.setDesc(desc);
            
            if(logoname!="")
            {
                System.out.println("if condition logo name is "+logoname);
                p.setLogo(logoname);
            }
              else
            {
                System.out.println("outside if logo name is "+logoname);
            }
            boolean f = p1.post_update(p, id);

            if (f) {
                String path = getServletContext().getRealPath("") + "img/pic" + File.separator + p.getLogo();
                System.out.println("image path is " + path);
                helpper.deleteFile(path);
                if (helpper.saveFile(logo.getInputStream(), path)) {

                    msg msg = new msg("post Updated", "alert-success");

                    session.setAttribute("msg", msg);
                    response.sendRedirect("myjobpannel.jsp");
                } else {
                    msg msg = new msg("post  updated but something not", "alert-danger");

                    session.setAttribute("msg", msg);
                    response.sendRedirect("myjobpannel.jsp");
                }
            } else {
                out.print("not updated");
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
