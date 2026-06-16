package com.lab.controller;
import com.lab.bean.StudentBean;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dini <s75909@ocean.umt.edu.my>
 */
@WebServlet(name = "StudentListServlet", urlPatterns = {"/StudentListServlet"})
public class StudentListServlet extends HttpServlet {

  @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    List<StudentBean> stdList = new ArrayList<>();

    StudentBean s1 = new StudentBean();
    s1.setName("Ali bin Abu");
    s1.setMatricNo("S111");

    StudentBean s2 = new StudentBean();
    s2.setName("Siti Aminah");
    s2.setMatricNo("S222");

    StudentBean s3 = new StudentBean();
    s3.setName("Muthusamy");
    s3.setMatricNo("S333");

    stdList.add(s1);
    stdList.add(s2);
    stdList.add(s3);

    request.setAttribute("listData", stdList);

    RequestDispatcher rd = request.getRequestDispatcher("displayList.jsp");
    rd.forward(request, response);
    }   
}