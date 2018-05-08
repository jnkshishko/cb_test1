package app.servlets;

import app.EmployeeService;
import app.model.Employee;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListServlet", urlPatterns = {"/list"})
public class ListServlet extends HttpServlet {

    @EJB
    private EmployeeService employeeService;

    @GET
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Employee> list = employeeService.getAll();
        req.setAttribute("employees", list);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("list.jsp");
        requestDispatcher.forward(req, resp);
    }

//    @POST
//    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//
//
//    }

}
