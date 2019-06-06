<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06.06.2019
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        JSTL_formatting
    </head>
    <body>
        <jsp:useBean id="now" class="java.util.Date" />
        <fmt:setLocale value="en-EN"/>
        Вывод даты в формате English<br/> Сегодня:
        <fmt:formatDate value="${now}" /><br/>
        <fmt:setLocale value="ru-RU"/>
        Вывод даты в формате Russian<br/> Сегодня:
        <fmt:formatDate value="${now}" />
        <br/> Стиль времени: (short):
        <fmt:formatDate value="${now}" type="time" timeStyle="short" />
        <br/> (medium):
        <fmt:formatDate value="${now}" type="time" timeStyle="medium" />
        <br/> (long):
        <fmt:formatDate value="${now}" type="time" timeStyle="long" />
        <br/><br/>

        <c:set var="currentNumber" value="118000"/>
        <c:out value="Вывод формата числа : ${currentNumber}"/>
        <br/> Формат (по умолчанию) :
        <fmt:formatNumber value="${currentNumber}" />
        <br/> Процентный формат :
        <fmt:formatNumber value="${currentNumber}" type="percent"/>
        <br/>
        <fmt:setLocale value="be-BY"/>
        Белорусские рубли :
        <fmt:formatNumber value="${currentNumber}" type="currency"/>
        <br/> Французская валюта :
        <fmt:setLocale value="fr-FR"/>
        <fmt:formatNumber value= "${currentNumber}" type="currency"/>
        <br/>
        <a href="Tags.jsp">Next</a>
    </body>
</html>
