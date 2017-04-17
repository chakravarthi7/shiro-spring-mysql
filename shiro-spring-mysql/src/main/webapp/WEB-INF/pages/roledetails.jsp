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
<h3>Role Details</h3>
<%-- <table>
<thead>
<tr>ID</tr>
<tr>Role Name</tr>

</thead>
<tbody>


<c:forEach items="${roles}" var="module">
<tr>
<td> ${module.id} </td>
<td> ${module.roName}</td>

<td><a href="${contextPath}/role/delete/${module.id}"> <input type="button" value="Delete" /></a></td>
<td><a href="${contextPath}/role/update/${module.id}"> <input type="button" value="Update" /></a></td>
<td><a href="${contextPath}/role/view/${module.id}"> <input type="button" value="View" /></a></td>
</tr>
</c:forEach>

</tbody>
</table> --%>
<div class="container">
<div class="row">
<div class="col-sd-4"></div>

<div class="col-sd-4">
<h1> <a href="${contextPath}/roleAdd"> <span class="glyphicon glyphicon-plus-sign" ></span></a> </h1>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Role</th>
        <th>Option</th>
      </tr>
    </thead>
    <tbody>
	<c:forEach items="${roles}" var="module">
      <tr>
        <td>${module.id}</td>
        <td>${module.roName}</td>
        <td> <a href="${contextPath}/role/view/${module.id}"><button type="button" class="btn btn-primary">View</button></a>
		<a href="${contextPath}/role/update/${module.id}"> <button type="button" class="btn btn-primary">Update</button></a>
		 <a href="${contextPath}/role/delete/${module.id}"> <button type="button" class="btn btn-danger">Delete</button></a>
		</td>
      </tr>
	  </c:forEach>
      
    </tbody>
  </table>
  </div>
<div class="col-sd-4"></div></div></div>
</body>
</html>