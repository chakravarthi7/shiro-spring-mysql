<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <script type="text/javascript" src="${contextPath}/static/jquery/jquery-1.11.1.min.js"></script> --%>
<%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
<title>Insert title here</title>
</head>
<body>
<%-- 
<form action="${contextPath}/roleper/submit" method="POST">
<br><br>
Role Name: 
<select name="roleId" onchange="alertMessage();">
<c:forEach items="${trvalues}" var="module"><option id="roleId" value="${module.id}">${module.roName}</option></c:forEach>
</select>
<br><br><div id="here">
<c:forEach items="${tpvalues}" var="valu">
  <input type="checkbox" id="permissionId${valu.id}" name=permissionId value="${valu.id}">${valu.peName}<br>

</c:forEach><br><br></div>
<input type="submit" Value="Submit">

</form> --%>
<br><br>
 <form class="form-horizontal" action="${contextPath}/roleper/submit" method="POST">
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Permission Name</label>
    <div class="col-sm-10">
    
      <select  class="form-control" name="roleId" onchange="alertMessage();" >
      <option id="roleId" >Select</option>
      <c:forEach items="${trvalues}" var="module"><option id="roleId" value="${module.id}">${module.roName}</option></c:forEach>
      </select>
    </div>
  </div>
 
  <br><br><div id="here">
<c:forEach items="${tpvalues}" var="valu">
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     <label class="checkbox-inline">
  <input type="checkbox" id="permissionId${valu.id}" name=permissionId value="${valu.id}">${valu.peName}<br>
</label>

    </div>
  </div></c:forEach></div>

   
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     
        <button type="submit" class="btn btn-primary">Role Permission</button>
    </div>
  </div>
</form>


<script type="text/javascript">


function alertMessage(){
	
	
		 $( "#here" ).load(window.location.href + " #here" );
		
	

	//$('#permissionId1').attr('checked','checked');
	var roleId=$('select[name=roleId]').val();
	alert(roleId);
	
	$.ajax({
	
	    type: "GET",
	    url: "${contextPath}/roleper/checkstate/"+roleId,
	  	data: roleId,
	    contentType: "application/json; charset=utf-8",
	    datatype: "json",
		success: function(result){
	     
	        result = JSON.parse(result)

	        $.each(result, function( index, value ) {
	        	
	        	$('#permissionId'+value).prop('checked', true);
	        	});
	        
	        
	    }
	});
	
}

</script>
</body>
</html>