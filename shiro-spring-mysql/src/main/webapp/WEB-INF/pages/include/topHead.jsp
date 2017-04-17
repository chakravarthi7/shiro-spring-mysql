<%
    String contextPath = request.getContextPath();
    request.setAttribute("contextPath", contextPath);
%>


<title>Shiro MySQL Demo</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${contextPath}/static/css/base.css" />

<script type="text/javascript" src="${contextPath}/static/jquery/jquery-1.11.1.min.js"></script>
<link href="${contextPath}/static/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    var contextPath = '${contextPath}';
    var pageSize = 10;
</script>