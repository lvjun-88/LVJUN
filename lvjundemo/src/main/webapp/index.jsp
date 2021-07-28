<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <%--    <meta HTTP-EQUIV="refresh" content="0.1;url=http://127.0.0.1:8080/getArticesatype">--%>

</head>
<script type="text/javascript">
    function directUrl() {
        window.location.href="getindexonehome";
        return;
    }
</script>
<body onload="directUrl()">
</body>


<%--<a href="getArticesatype">indexhome</a><br>--%>
<%--<a href="getUsersAll">查询用户名单</a>--%>
<%--<img src="${pageContext.request.contextPath}/images/1.png">--%>
<%--<jsp:forward page="/WEB-INF/pages/login.jsp"></jsp:forward>--%>




</html>
