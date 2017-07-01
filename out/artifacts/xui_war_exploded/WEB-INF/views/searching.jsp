<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 01.07.2017
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Найденные пользователи</title>
</head>
<body>
<table>
    <tr>
        <th>Имя</th>
        <th>Возраст</th>
        <th>Дата создания</th>
        <th>Администратор</th>
        <th>Обновить</th>
        <th>Удалить</th>
    </tr>
    <c:if test="${!empty searchingUsers}">
        <c:forEach items="${searchingUsers}" var="user">
            <tr>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.createDate}</td>
                <c:if test="${user.admin}"><td>Да</td></c:if>
                <c:if test="${!user.admin}"><td>Нет</td></c:if>
                <td><a href="/edit/${user.id}">Обновить</a></td>
                <td><a href="/delete/${user.id}">Удалить</a> </td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>

