<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 01.07.2017
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Email</th>
        <th>Пол</th>
        <th>День рождения</th>
        <th>Телефон</th>

    </tr>
    <c:if test="${!empty contactList}">
        <c:forEach items="${contactList}" var="contact">
            <tr>
                <td><a href="/contacts?action=aboutContact&contactId=${contact.contactId}">${contact.lastName}</a></td>
                <td>${contact.firstName}</td>
                <td>${contact.email}</td>
                <td>${contact.gender}</td>
                <td>${contact.date}</td>
                <td>${contact.phone}</td>
                <td><a href="/contacts?action=delete&contactId=${contact.contactId}">Удалить</a> </td>
                <td><a href="/contacts?action=edit&contactId=${contact.contactId}">Изменить</a> </td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>
