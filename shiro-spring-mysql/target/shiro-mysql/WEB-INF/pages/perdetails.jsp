<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
<body>
<h3>Permission Details</h3>

<div class="container">
<div class="row">
<div class="col-sd-4"></div>

<div class="col-sd-4">
<h1> <a href="${contextPath}/permissionAdd"> <span class="glyphicon glyphicon-plus-sign" ></span></a> </h1>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Permission Name</th>
        <th>Option</th>
      </tr>
    </thead>
    <tbody>



<c:forEach items="${roles}" var="module">
<tr>
<td> ${module.id} </td>
<td> ${module.peName}</td>

<td><a href="${contextPath}/permission/view/${module.id}"><button type="button" class="btn btn-primary">View</button></a>
<a href="${contextPath}/permission/update/${module.id}"> <button type="button" class="btn btn-primary">Update</button></a>
<a href="${contextPath}/permission/delete/${module.id}"> <button type="button" class="btn btn-danger">Delete</button></a>
</tr>
</c:forEach>

</tbody>
</table>
  </div>
<div class="col-sd-4"></div></div></div>
</body>
</html>