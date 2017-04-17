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
<form class="form-horizontal" action="${contextPath}/role/edit" method="post"  >
 <input type="hidden" name="id" value="${objectvalues.id}">

  
   <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"> Role Name</label>
    <div class="col-sm-10">
    
      <input type="text" class="form-control" id="RoName"  name="RoName" value="${objectvalues.roName}">
    </div>
  </div>
 

   
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     
        <button type="submit" class="btn btn-primary">Update Role</button>
    </div>
  </div>

</form>


</body>
</html>

