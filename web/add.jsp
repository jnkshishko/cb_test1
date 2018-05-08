<%--
  Created by IntelliJ IDEA.
  User: Eugenio
  Date: 05.05.2018
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление сотрудника</title>
</head>
    <body>
        <div>
            <%
                if (request.getAttribute("employee") != null) {
                    out.println("<p>Сотрудник '" + request.getAttribute("employee") + "' добавлен!</p>");
                }
            %>
        </div>
        <div>
                <form action="add" method="post">
                    <label>Фамилия:
                        <input type="text" name="surname"><br/>
                    </label>

                    <label>Имя:
                        <input type="text" name="name"><br/>
                    </label>

                    <label>Отчество:
                        <input type="text" name="patronymic"><br/>
                    </label>

                    <label>Должность:
                        <input type="text" name="position"><br/>
                    </label>

                    <label>Дата отсутствия:
                        <input type="date" name="date"><br/>
                    </label>

                    <label>Время отсутствия(минут):
                        <input type="number" name="time"><br/>
                    </label>

                    <label>Причина отсутствия:
                        <input type="text" name="cause"><br />
                    </label>

                    <button type="submit">Добавить</button>
                </form>
        </div>
    </body>
</html>
