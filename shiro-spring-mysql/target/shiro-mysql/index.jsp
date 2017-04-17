<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Shiro MySQL Demo</title>
    <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
    </head>
    <body>
<script type="text/javascript">

$(document).ready(function() { 
	
	/* $.ajax({
        type: "GET",
        url: "${contextPath}/redirect",
        success: function( response ){
            //do something
            alert(response);
        }
    }); */
	
    
	 window.location.href="${contextPath}/redirect";
});

</script>

    </body>
    </html>