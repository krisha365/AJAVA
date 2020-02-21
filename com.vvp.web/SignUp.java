/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vvp.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PARTH
 */
public class SignUp extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String cpwd = request.getParameter("cpwd");
        String email = request.getParameter("email");
        String mobileno = request.getParameter("phone");
        int sem = Integer.parseInt(request.getParameter("sem"));
        String branch = request.getParameter("branch");
        String gender = request.getParameter("gender");
        String hobby[] = request.getParameterValues("hobby[]");
        String address = request.getParameter("address");

        try {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUp</title>");
            out.println("</head>");
            out.println("<body>");
            if(uname.length()!=6 || uname.length()!=20)
            {
                out.println("<script> alert('Atleast 6-20 characters');</script>");
                response.sendRedirect("a1program4.html");
            }

            if(pwd.length()!=6 || pwd.length()!=20)
            {
                out.println("<script> alert('Atleast 6-20 characters');</script>");
                response.sendRedirect("a1program4.html");
            }

            if(mobileno.length()!=10)
            {
                out.println("<script> alert('Valid 10 digits');</script>");
                response.sendRedirect("a1program4.html");
            }

            if(!(pwd.equals(cpwd)))
            {
                out.println("<script> alert('Incorrect Passwords');</script>");
                response.sendRedirect("a1program4.html");
            }
            if(hobby.length != 3){
                out.println("<script> alert('Minimum 3 hobbies');</script>");
                response.sendRedirect("a1program4.html");
            }

            out.println("<h1>Student Details</h1>");
            out.println("<h2>Name : " + uname + "</h2>"
                    + "<h2>Email : " + email + "</h2>"
                    + "<h2>Mobile No. :" + mobileno + "</h2>"
                    + "<h2>Semester : " + sem + "</h2>"
                    + "<h2>Branch : " + branch + "</h2>"
                    + "<h2>Gender :" + gender + "</h2>"
                    + "<h2>Hobbies : </h2><ul>");
                    for(int i=0;i<3;i++){
                       out.println("<li>" + hobby[i] + "</li>");
                    }
                    out.println("</ul>"
                            + "<h2>" +address+ "</h2>");

            out.println("</body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
