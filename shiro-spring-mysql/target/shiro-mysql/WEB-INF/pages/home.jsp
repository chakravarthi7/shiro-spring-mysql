<!DOCTYPE html>
<html lang="en">
<head>
    <title>Shiro MySQL Demo</title>
    <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>
    <%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
     <link rel="stylesheet" href="static/bootstrap3/css/bootstrap.min.css">
     <script type="text/javascript" src="static/bootstrap3/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="static/jquery/jquery.min.js"></script>
   <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 600px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 50px;
    }
    
     header {
      background-color: #555;
      color: white;
      padding: 50px;
    }
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    #preview-frame {
    width: 100%;
    background-color: #fff;
}
.wrapper         {width:80%;height:100%;margin:0 auto;background:#CCC}
.h_iframe        {position:relative;}
.h_iframe .ratio {display:green;width:100%;height:auto;}
.h_iframe iframe {position:absolute;top:0;left:0;width:100%; height:100%;}
  </style>
</head>
<body>

<header class="container-fluid">
<div class="row">
<div class="col-sm-5"></div>
<div class="col-sm-6"><p><h2>INDEX PAGE</h2><p></div>
<div class="col-sm-1"> <a href="${contextPath}/logout"> <button type="submit" class="btn btn-warning">Logout</button></a></div>
</div>


</header>


<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>USER Blog</h4>
      <ul class="nav nav-pills nav-stacked">
      
      <%--   <li>  <a href="${contextPath}/admin" >admin</a></li> --%>
 		<%-- <li><a href="${contextPath}/adminSuper" target="iframe_a"  >adminSuper</a></li>
 		 <li> <a href="${contextPath}/adminList" target="iframe_a"  >adminList</a></li>
 		 <li><a href="${contextPath}/adminAdd" target="iframe_a"  >adminAdd</a></li>
  		<li><a href="${contextPath}/adminDelete" target="iframe_a"  >adminDelete</a></li> --%>
  		 <li><a href="${contextPath}/user/details"  target="iframe_a" >User Add</a></li>
  		 <li><a href="${contextPath}/application/details" target="iframe_a" >Application Add</a></li>
 		 <li><a href="${contextPath}/role/details" target="iframe_a" >Role Add</a></li>
 		 <li><a href="${contextPath}/permission/details"target="iframe_a"  >Permission Add</a></li>
 		 <li><a href="${contextPath}/roleper/add" target="iframe_a" >Role Permission</a></li>
	
      </ul><br>
     
    </div>

    <div class="col-sm-9">
   
    <iframe src="${contextPath}/frameindex" height="550" width="100%" allowfullscreen=""  frameborder="0" name="iframe_a">
    </iframe>
  
   
    </div>
  </div>
</div>

</body>
</html>
