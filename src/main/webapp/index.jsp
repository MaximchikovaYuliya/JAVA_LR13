<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <c:out value="JSTL подключена"/>
        <br/>
        <h1>${user}</h1>
        <c:if test="${ not empty user and user eq 'guest' }"> User is Guest </c:if>
        <br/>
        <c:remove var="user"/>
        <c:set var="number" value="50"/>
        <c:choose>
            <c:when  test="${ number > 10 }" >
                <c:out  value="число ${number} больше 10"/>
            </c:when>
            <c:when  test="${ number > 40 }">
                <c:out  value="число ${ number } больше 40"/>
            </c:when>
            <c:when  test="${ number > 60 }" >
                <c:out  value="число ${ number } больше 60"/>
            </c:when>
            <c:otherwise>
                <c:out  value="число ${ number } меньше 10"/>
            </c:otherwise>
        </c:choose>
        <br/>
        <c:set var="number" value="7.1"/>
        <c:catch var="formatException">
            <c:if  test="${number < 9}">
                <c:out  value="Number ${number}" />
                меньше чем (9)
            </c:if>
        </c:catch>
        <br/>
        <c:if test="${not empty formatException }">
            Неверный тип :
            <c:out value="${ number }" />
            <br/>
            <hr/> Сгенерировано исключение
            <hr/> ${  formatException }
        </c:if>
        <br/>
        <a href="JSTL_formatting.jsp">Next</a>
    </body>
</html>
