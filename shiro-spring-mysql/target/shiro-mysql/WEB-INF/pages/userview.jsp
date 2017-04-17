<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
<title>Insert title here</title>
</head>
<body>

The ID is  ${viewobject.id}<br><br>
The User Name is  ${viewobject.username}<br><br>
The Password is  ${viewobject.password}<br><br>
The Salt is ${viewobject.salt}<br/>
<br><br>
</body>
</html>