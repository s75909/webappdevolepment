package com.lab.controller;

import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class SubjectServlet extends HttpServlet {

    SubjectDAO dao = new SubjectDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        String matricNo = (String) session.getAttribute("matricNo");

        String action = req.getParameter("action");

        if ("delete".equals(action)) {

            int id = Integer.parseInt(req.getParameter("id"));
            dao.deleteSubject(id, matricNo);

            resp.sendRedirect("SubjectServlet?action=view");
        }

        else if ("view".equals(action)) {

            req.setAttribute("list", dao.getSubjectsByMatric(matricNo));
            req.getRequestDispatcher("viewSubjects.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        String matricNo = (String) session.getAttribute("matricNo");

        String action = req.getParameter("action");

        if ("add".equals(action)) {

            SubjectBean sb = new SubjectBean();
            sb.setMatricNo(matricNo);
            sb.setSubjectCode(req.getParameter("subjectCode"));

            dao.addSubject(sb);
            resp.sendRedirect("SubjectServlet?action=view");
        }

        else if ("update".equals(action)) {

            SubjectBean sb = new SubjectBean();
            sb.setId(Integer.parseInt(req.getParameter("id")));
            sb.setMatricNo(matricNo);
            sb.setSubjectCode(req.getParameter("subjectCode"));

            dao.updateSubject(sb);
            resp.sendRedirect("SubjectServlet?action=view");
        }
    }
}