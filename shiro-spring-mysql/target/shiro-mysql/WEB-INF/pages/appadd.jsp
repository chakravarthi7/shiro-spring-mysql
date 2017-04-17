<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
	<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
<title>Insert title here</title>
</head>
<body>
${Msg}
<%-- <form action="${contextPath}/application/add" method="post" >


Application Name: 
<input type="text" > <br>

Application URL:
<Input type="url" name="appurl"><br>




  <input type="checkbox" id="roleId${valu.id}" name=roleId value="${valu.id}">${valu.roName}<br>

</c:forEach><br><br></div>



<button type="submit" >Add Application</button>

</form> --%>

${Msg}<br><br>
  <form class="form-horizontal" action="${contextPath}/application/add" method="post">
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Application Name</label>
    <div class="col-sm-10">
    
      <input type="text" class="form-control" id="appname" name="appname" placeholder="Application Name">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Application URL</label>
    <div class="col-sm-10">
      <input type="url" class="form-control" id="appurl" name="appurl" placeholder="Application URL">
    </div>
  </div>
  
 <br><br><div id="here">
 <c:forEach items="${rolevalue}" var="valu">
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     <label class="checkbox-inline">
  <input type="checkbox" id="roleId${valu.id}" name=roleId value="${valu.id}">${valu.roName}
</label>

    </div>
  </div></c:forEach></div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     
        <button type="submit" class="btn btn-primary">Add Application</button>
    </div>
  </div>
</form>
</body>
</html>