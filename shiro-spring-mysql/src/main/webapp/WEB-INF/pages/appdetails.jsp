<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
	<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
<title>Insert title here</title>
</head>
<body>
<h3>Application Details</h3>

<div class="container">
<div class="row">
<div class="col-sd-4"></div>
<div class="col-sd-4">
<h1> <a href="${contextPath}/application/page"> <span class="glyphicon glyphicon-plus-sign" ></span></a> </h1>
<table class="table table-bordered">
<thead>
      <tr>
        <th>ID</th>
        <th>Application Name</th>
        <th>Application URL</th>
        <th>Option</th>
      </tr>
    </thead>
<tbody>

<c:forEach items="${values}" var="module">
<tr>
<td> ${module.id} </td>
<td> ${module.appname}</td>
<td> ${module.appurl}</td>
<td><a href="${contextPath}/application/view/${module.id}"><button type="button" class="btn btn-primary">View</button></a>
<a href="${contextPath}/application/update/${module.id}"> <button type="button" class="btn btn-primary">Update</button></a>
<a href="${contextPath}/application/delete/${module.id}">  <button type="button" class="btn btn-danger">Delete</button></a>
</tr>
</c:forEach>

</tbody>
</table>
  </div>
<div class="col-sd-4"></div></div></div>

</body>
</html>