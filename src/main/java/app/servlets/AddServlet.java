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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
public class AddServlet extends HttpServlet {

    @EJB
    private EmployeeService employeeService;

    @GET
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("add.jsp");
        requestDispatcher.forward(req, resp);

    }
    @POST
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String patronymic = req.getParameter("patronymic");
        String position = req.getParameter("position");
        System.out.println(req.getParameter("date"));
        Date date = parseDate(req.getParameter("date"));
        Long time = Long.parseLong(req.getParameter("time"));
        String cause = req.getParameter("cause");
        Employee employee = new Employee(surname, name, patronymic, position, date, time, cause);

        Employee employee1 = employeeService.add(employee);

        req.setAttribute("employee", employee1.getSurname());
        doGet(req, resp);
    }

    private Date parseDate(String dateForParsing) {

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

        try {
            return format.parse(dateForParsing);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return Calendar.getInstance().getTime();

    }

}
