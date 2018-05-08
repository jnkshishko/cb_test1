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
                        <input type="text" name="surname" style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Имя:
                        <input type="text" name="name" required style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Отчество:
                        <input type="text" name="patronymic" required style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Должность:
                        <input type="text" name="position" required style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Дата отсутствия:
                        <input type="date" name="date" required style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Время отсутствия(минут):
                        <input type="number" name="time" required style="position: absolute; left: 190px;"><br/>
                    </label>

                    <label>Причина отсутствия:
                        <input type="text" name="cause" required style="position: absolute; left: 190px;"><br />
                    </label>

                    <button type="submit">Добавить</button>
                </form>
        </div>
    </body>
</html>
