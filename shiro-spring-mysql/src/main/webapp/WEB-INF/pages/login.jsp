<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
<html>
<head>
    <title>Shiro MySQL Demo</title>
    <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
</head>
<body>
<form action="${contextPath}/login" method="post" class="eossForm">
    <table class="eossFromTable" style="width: 300px; height: 100px;">
        <tr>
            <td align="right">username:</td>
            <td><input name="username" type="text" value="admin"/></td>
        </tr>
        <tr>
            <td align="right">password:</td>
            <td><input name="password" type="text" value="123"/></td>
        </tr>
        <tr>
            <td align="right">rememberMe:</td>
            <td><input name="rememberMe" type="checkbox" /></td>
        </tr>
        <tr>
            <td colspan="99" align="center">
                <input type="submit" value="submit"/> ${msg}
            </td>
        </tr>
         <tr>
         
    </table>
</form>

            <input type="button" value="Register" onclick="Redirect();" />

<Script type="text/javascript">

function Redirect()
{
	 window.location.href = "${contextPath}/userAdd";
}
</Script>
</body>
</html> --%>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
    <%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <link rel="stylesheet" href="static/bootstrap3/css/bootstrap.min.css">
     <script type="text/javascript" src="static/bootstrap3/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="static/jquery/jquery.min.js"></script>
</head>
<body>

<div class="container">
  <br>  <br>  <br>  <br>  <br>  <br>  <br>
    <div class="col-sm-4"></div>
  <div class="col-sm-4">  
  <form id="myForm" action="${contextPath}/login" method="post">
  
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input type="text"  name="username" class="form-control"  placeholder="User Name"  >
    </div>
	<br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input  type="password" class="form-control" name="password" placeholder="Password" >
    </div>
	<br>
	
	
	    <div class="input-group">
	<div class="checkbox">
   &nbsp;&nbsp;  <label><input type="checkbox"  name="rememberMe" > Remember me</label>   &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; <a href="${contextPath}/userAdd" class="primary"><b>Register</b></a> 
    </div></div> 
	<br>
	<button type="submit" class="btn btn-primary">Submit</button>
	<button type="button" class="btn btn-danger" onclick="clear();" >Cancel</button>
	${msg}
  
  </form>
  
  
 
  </div>
<div class="col-sm-4">  </div>
</div>
<script type="text/javascript">

function clear(){
	alert("hello");
	document.getElementById("myForm").reset();
}

</script>
</body>
</html>