<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06.06.2019
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="ltf" uri="/WEB-INF/tdl/labledtextfield.tdl" %>
<%@ taglib prefix="sub" uri="/WEB-INF/tdl/submit.tdl" %>

<html>
<head>
    <title>Title</title>
</head>
    <body>
        <ltf:labledtextfield label="Login" text="login"/>
        <br/>
        <div>
            <sub:specsubmit type="register"/>
            <sub:specsubmit type="login"/>
        </div>
        <br/>
    </body>
</html>
