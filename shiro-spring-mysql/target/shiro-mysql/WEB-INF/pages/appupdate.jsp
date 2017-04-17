<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
</head>
<body>
${Msg}
<br><br>
<form  class="form-horizontal"  action="${contextPath}/application/edit/${appvalues.id}" method="post" >

<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Application Name</label>
    <div class="col-sm-10">
    
      <input type="text" class="form-control" id="appname" name="appname" value="${appvalues.appname}" >
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Application URL</label>
    <div class="col-sm-10">
      <input type="url" class="form-control" id="appurl" name="appurl" value="${appvalues.appurl}">
    </div>
  </div>



<br><br><div id="here">
<c:forEach items="${rolevalue}" var="valu">
<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
   
  <c:set var="flag" value='0'/>
 <c:forEach items="${selectrolval}" var="module">
 <c:set var="testValue1" value="${valu.id}"/>
 <c:set var="testValue2" value="${module.roleid}"/>

 <c:if test="${testValue1 == testValue2}"> 
  <c:set var="flag" value='1'/>
   <label class="checkbox-inline">
  <input type="checkbox"  id="roleId${valu.id}" name=roleId value="${valu.id}" checked="checked">${valu.roName}
 </label>
 </c:if> 
 </c:forEach>
    <c:if  test="${flag == 0}">
       <label class="checkbox-inline">
       <input type="checkbox"  id="roleId${valu.id}" name=roleId value="${valu.id}">${valu.roName}</label>
       <c:set var="flag" value='1'/>
    </c:if> </div>
  </div>
   </c:forEach>
   
 
<br><br></div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
     
        <button type="submit" class="btn btn-primary">Update Application</button>
    </div>
  </div>

</form>


</body>
</html>