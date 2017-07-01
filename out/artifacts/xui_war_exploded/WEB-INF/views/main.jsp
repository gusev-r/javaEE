<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title></title>

</head>
<body>
<form method="post" action="/search/">
    Поиск: <input type="text" name="userName">
    <input type="submit" value="Найти">
</form>
<table>
    <tr>
        <th>Имя</th>
        <th>Возраст</th>
        <th>Дата создания</th>
        <th>Администратор</th>
        <th>Обновить</th>
        <th>Удалить</th>
    </tr>
    <c:if test="${!empty userList}">
        <c:forEach items="${userList}" var="user">
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
<br>
<c:url var="addAction" value="/main/add"/>
<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.name}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="Имя"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="age">
                    <spring:message text="Возраст"/>
                </form:label>
            </td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="admin">
                    <spring:message text="Администратор"/>
                </form:label>
            </td>
            <td>
                <form:checkbox path="admin"/>
            </td>
        </tr>
        <c:if test="${!empty user.name}">
            <input type="submit"
                   value="<spring:message text="Редактировать пользователя"/>"/>
        </c:if>
        <c:if test="${empty user.name}">
            <input type="submit"
                   value="<spring:message text="Добавить пользователя"/>"/>
        </c:if>
    </table>
</form:form>
</body>
</html>