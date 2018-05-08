<%@ page import="app.model.Employee" %>
<%@ page import="java.util.*" %>
<%--Created by IntelliJ IDEA.
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
                    <div>
                        <label for="surname">Фамилия:</label>
                        <input type="text" id="surname" name="surname" required style="position: absolute; left: 100px;">
                    </div>
                    <div>
                        <label for="name">Имя:</label>
                        <input type="text" id="name" name="name" required style="position: absolute; left: 100px;"><br/>
                    </div>
                    <div>
                        <label for="patronymic">Отчество:</label>
                        <input type="text" id="patronymic" name="patronymic" required style="position: absolute; left: 100px;"><br/>
                    </div>
                    <div>
                        <label for="position">Должность:</label>
                        <select id="position" name="position" style="position: absolute; left: 100px;">
                            <%
                                List<Employee> listAll = (List<Employee>) request.getAttribute("employees");
                                Set<String> positions = new HashSet<>();
                                if (listAll != null && !listAll.isEmpty()) {
                                    for (Employee s : listAll) {
                                        positions.add(s.getPosition());
                                    }
                                }
                                Iterator<String> it = positions.iterator();
                                while(it.hasNext()){
                            %>
                            <option><%=it.next() %></option>
                            <%
                                }
                            %>
                        </select><br/>
                    </div>
                    <div>
                        <button type="submit">Найти</button>
                    </div>
                </form>
            </div>
        <div>
            <h3>Искомый сотрудник:</h3>
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
            <b>**********************************************************************************************************************************************************</b>
        </div>
            <div><h3>Список всех сотрудников:</h3>
            <%
                List<Employee> employees = (List<Employee>) request.getAttribute("employees");


                if (employees != null && !employees.isEmpty()) {
                    for (Employee s : employees) {
                        out.println("<li>" + s.toString() + "</li>");

                    }
                }
            %>
        </div>
    </body>
</html>
