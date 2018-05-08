<%@ page import="java.util.List" %>
<%@ page import="app.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Eugenio
  Date: 05.05.2018
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Список сотрудников</title>
</head>
    <body>
        <div>
            <%
                List<Employee> employees = (List<Employee>) request.getAttribute("employees");

                if (employees != null && !employees.isEmpty()) {
                    for (Employee s : employees) {
                        out.println("<li>" + s.toString() + "</li>");
                    }
                }
            %>
        </div>
        <div>
            list
        </div>
    </body>
</html>
