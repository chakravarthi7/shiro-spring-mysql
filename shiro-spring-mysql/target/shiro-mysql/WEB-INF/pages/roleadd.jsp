<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
<body>
<%-- <form action="${contextPath}/role/add" method="post"  >
  Role name:
  <input type="text" name="RoName" ><br/>

  <input type="submit" Value="Add Role">

</form> --%>
<br><br>
 <form class="form-horizontal"action="${contextPath}/role/add" method="post"  >
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"> Role Name</label>
    <div class="col-sm-10">
    
      <input type="text" class="form-control" id="RoName"  name="RoName"placeholder="Role Name">
    </div>
  </div>
 

   
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     
        <button type="submit" class="btn btn-primary">Add Role</button>
    </div>
  </div>
</form>
</body>
</html>