<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<%@page import="org.apache.shiro.subject.Subject,org.apache.shiro.SecurityUtils"%>
		    <%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
<title>Insert title here</title>
</head>
<body>



<div class="container">
  <h2>Application Info</h2>
      
  <table class="table">

    <tbody>
      <tr>
        <td>Current User Name</td>
        <td>${username}</td>
      
      </tr>
      <tr>
        <td>Application Name</td>
        <td>${appplicationobj.appname}</td>
      
      </tr>
      <tr>
        <td>Application Domain</td>
        <td>${appplicationobj.appurl}</td>
   
      </tr>
      <c:if test="${not empty specificroles}">
       <tr>
        <td>Roles to Application</td>
        <td>
        
        <c:forEach items="${specificroles}" var="approl">

<c:forEach items="${rolevalues}" var="valu">

 <c:if test="${approl.roleid == valu.id}"> 
${valu.roName }
</c:if>
</c:forEach>
<br><br>
</c:forEach>
        
        
        </td>
   
      </tr></c:if>
    </tbody>
  </table>
</div>

</body>
</html>