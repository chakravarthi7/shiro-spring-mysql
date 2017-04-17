<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
    <%@ include file="/WEB-INF/pages/include/topInc.jsp" %>

<title>Insert title here</title>
</head>
<body>
<c:out value="${msg}"/>

<h3>User Details</h3>

<div class="container">
<div class="row">
<div class="col-sd-4"></div>
<div class="col-sd-4">
<h1> <a href="${contextPath}/userAdd"> <span class="glyphicon glyphicon-plus-sign" ></span></a> </h1>
<table class="table table-bordered">
<thead>
      <tr>
        <th>ID</th>
        <th>User Name</th>
        <th>Password</th>
        <th>Salt</th>
        <th>Option</th>
      </tr>
    </thead>
<tbody>

<c:forEach items="${uservalues}" var="module">
<tr>
<td> ${module.id} </td>
<td> ${module.username}</td>
<td> ${module.password}</td>
<td> ${module.salt}</td>
<td><a href="${contextPath}/user/view/${module.id}">  <button type="button" class="btn btn-primary">View</button></a>
<a href="${contextPath}/user/update/${module.id}"><button type="button" class="btn btn-primary">Update</button></a>
<a href="${contextPath}/user/delete/${module.id}"><button type="button" class="btn btn-danger">Delete</button></a>
</tr>
</c:forEach>

</tbody>
</table>
  </div>
<div class="col-sd-4"></div></div></div>

</body>
</html>