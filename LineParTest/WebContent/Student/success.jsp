<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/admin.css"/>
<title>SUCCESS</title>
</head>
<body>
<c:if test="${empty sessionScope.student}"><c:redirect url="/home.jsp" /></c:if> 
	<h1>Successfully sign up</h1>
	<form action="${pageContext.request.contextPath}/home.jsp" method="post" name="backForm">
 <input type="submit" class="button-block" value="Back">
          </form>
</body>
</html>