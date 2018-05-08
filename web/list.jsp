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
                        <select id="surname" name="surname" required style="position: absolute; left: 100px;">
                            <%
                                List<Employee> listAllForSurnames = (List<Employee>) request.getAttribute("employees");
                                Set<String> surnames = new HashSet<>();
                                if (listAllForSurnames != null && !listAllForSurnames.isEmpty()) {
                                    for (Employee s : listAllForSurnames) {
                                        surnames.add(s.getSurname());
                                    }
                                }
                                Iterator<String> iteratorSurnames = surnames.iterator();
                                while(iteratorSurnames.hasNext()){
                            %>
                            <option><%=iteratorSurnames.next() %></option>
                            <%
                                }
                            %>
                        </select><br/>
                    </div>
                    <div>
                        <label for="name">Имя:</label>
                        <select id="name" name="name" required style="position: absolute; left: 100px;">
                            <%
                                List<Employee> listAllForNames = (List<Employee>) request.getAttribute("employees");
                                Set<String> names = new HashSet<>();
                                if (listAllForNames != null && !listAllForNames.isEmpty()) {
                                    for (Employee s : listAllForNames) {
                                        names.add(s.getName());
                                    }
                                }
                                Iterator<String> iteratorNames = names.iterator();
                                while(iteratorNames.hasNext()){
                            %>
                            <option><%=iteratorNames.next() %></option>
                            <%
                                }
                            %>
                        </select><br/>
                    </div>
                    <div>
                        <label for="patronymic">Отчество:</label>
                        <select id="patronymic" name="patronymic" required style="position: absolute; left: 100px;">
                            <%
                                List<Employee> listAllForPatronymic = (List<Employee>) request.getAttribute("employees");
                                Set<String> patronymic = new HashSet<>();
                                if (listAllForPatronymic != null && !listAllForPatronymic.isEmpty()) {
                                    for (Employee s : listAllForPatronymic) {
                                        patronymic.add(s.getPatronymic());
                                    }
                                }
                                Iterator<String> iteratorPatronymic = patronymic.iterator();
                                while(iteratorPatronymic.hasNext()){
                            %>
                            <option><%=iteratorPatronymic.next() %></option>
                            <%
                                }
                            %>
                        </select><br/>
                    </div>
                    <div>
                        <label for="position">Должность:</label>
                        <select id="position" name="position" style="position: absolute; left: 100px;">
                            <%
                                List<Employee> listAllForPositions = (List<Employee>) request.getAttribute("employees");
                                Set<String> positions = new HashSet<>();
                                if (listAllForPositions != null && !listAllForPositions.isEmpty()) {
                                    for (Employee s : listAllForPositions) {
                                        positions.add(s.getPosition());
                                    }
                                }
                                Iterator<String> iteratorPositions = positions.iterator();
                                while(iteratorPositions.hasNext()){
                            %>
                            <option><%=iteratorPositions.next() %></option>
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
