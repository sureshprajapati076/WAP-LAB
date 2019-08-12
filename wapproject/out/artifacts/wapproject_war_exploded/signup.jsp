<%--
  Created by IntelliJ IDEA.
  User: suresh
  Date: 2019-08-11
  Time: 09:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="SignUp" method="post">


    <p>USer Name</p>
    <input type="text" name="name"/><br /><p>Password</p>
    <input type="password" name="password"/>
    <br/><br/><br/>
    <input type="submit"/><br />
<c:if test="${useridalreadytaken}">
    User Id already Used
</c:if>
</form>
</body>
</html>
