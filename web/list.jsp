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
            <form action="list" method="post">
                <label>Фамилия:
                    <input type="text" name="surname" required>
                </label>

                <label>Имя:
                    <input type="text" name="name" required><br/>
                </label>

                <label>Отчество:
                    <input type="text" name="patronymic" required><br/>
                </label>

                <label>Должность:
                    <input type="text" name="position" required><br/>
                </label>
                <button type="submit">Найти</button>
            </form>
        </div>
        <div>
            Искомый сотрудник:
            <%
                if (request.getAttribute("foundEmployee") != null) {
                    List<Employee> foundEmployee = (List<Employee>) request.getAttribute("foundEmployee");

                    if (foundEmployee != null && !foundEmployee.isEmpty()) {
                        for (Employee f : foundEmployee) {
                            out.println("<li>" + f.toString() + "</li>");
                        }
                    } else {
                        out.println("Сотрудник не найден");
                    }
                }
            %>
        </div>
        <div>
            <b>*****************************************************************************</b>
        </div>
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

        </div>
    </body>
</html>
