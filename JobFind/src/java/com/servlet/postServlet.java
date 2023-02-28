/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.help.helpper;
import com.help.msg;
import com.help.post;
import com.help.postInsert;
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

/**
 *
 * @author Prince
 */
@MultipartConfig
public class postServlet extends HttpServlet {

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
            out.println("<title>Servlet postServlet</title>");            
            out.println("</head>");
            out.println("<body>");
          // String comapny,String title,String salary,String adress,String city,String companyemail,String time, String desc,String logo
             String comapny=request.getParameter("companyname");
             String title=request.getParameter("title");
             String salary=request.getParameter("salary");
             String adress= request.getParameter("address");
             String city = request.getParameter("city");
             String companyemail= request.getParameter("email");
             String time = request.getParameter("time");
             String desc = request.getParameter("desc");
             Part logo = request.getPart("logo");//resume 
             String logoname = logo.getSubmittedFileName();
             System.out.println("from post servlet "+desc);
             System.out.println("inside post servlet "+companyemail);
             post p = new post( comapny, title, salary, adress, city, companyemail, time,  desc, logoname);
             postInsert pi = new postInsert();
             HttpSession s = request.getSession();
             user u =(user) s.getAttribute("user");
          boolean f=pi.postinsert(p,u);
            if(f)
            {
                
                  s.setAttribute("post", p);
                String path = getServletContext().getRealPath("") + "img/pic" + File.separator + p.getLogo();
                System.out.println("image path is " + path);
                helpper.deleteFile(path);
                if (helpper.saveFile(logo.getInputStream(), path)) {
                   
                      
                       System.out.println("in the post servlet p is "+p);
                       response.sendRedirect("home.jsp");
                     
                   
                } else {
                   response.sendRedirect("home.jsp");
                }
            }
            else
            {
                out.print("not inserted");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }
//     String imageName = part.getSubmittedFileName();//image noo naam aape
//            Part resume = request.getPart("resume");//resume 
//            String resumename = resume.getSubmittedFileName();//resume noo naam aape


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
