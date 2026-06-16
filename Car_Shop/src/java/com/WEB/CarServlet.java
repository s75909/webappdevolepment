package com.WEB;

import com.DAO.CarDAO;
import com.Model.Car;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/")
public class CarServlet extends HttpServlet {

    private CarDAO carDAO;

    public void init() {
        carDAO = new CarDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        try {
            switch (action) {

                case "/new":
                    request.getRequestDispatcher("carForm.jsp").forward(request, response);
                    break;

                case "/insert":
                    insertCar(request, response);
                    break;

                case "/delete":
                    deleteCar(request, response);
                    break;

                case "/edit":
                    showEdit(request, response);
                    break;

                case "/update":
                    updateCar(request, response);
                    break;

                default:
                    listCar(request, response);
                    break;
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    // 🔥 FIX POST ERROR
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void listCar(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        List<Car> list = carDAO.selectAllCars();
        request.setAttribute("listCar", list);
        request.getRequestDispatcher("carList.jsp").forward(request, response);
    }

    private void insertCar(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        Car car = new Car(
                request.getParameter("brand"),
                request.getParameter("model"),
                Integer.parseInt(request.getParameter("cylinder")),
                Double.parseDouble(request.getParameter("price"))
        );

        carDAO.insertCar(car);
        response.sendRedirect("/");
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        int id = Integer.parseInt(request.getParameter("id"));
        Car car = carDAO.selectCar(id);

        request.setAttribute("car", car);
        request.getRequestDispatcher("carForm.jsp").forward(request, response);
    }

    private void updateCar(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        Car car = new Car(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("brand"),
                request.getParameter("model"),
                Integer.parseInt(request.getParameter("cylinder")),
                Double.parseDouble(request.getParameter("price"))
        );

        carDAO.updateCar(car);
        response.sendRedirect("/");
    }

    private void deleteCar(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        int id = Integer.parseInt(request.getParameter("id"));
        carDAO.deleteCar(id);

        response.sendRedirect("/");
    }
}