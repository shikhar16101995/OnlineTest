<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.test.bean.Subject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
input[type=radio]{
height:auto;
width: auto;
display:inline;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style1.css"/>
    <script src="../javascript/homepage.js" type="text/javascript"></script>
    <script>
$(document).ready(function() {
        $("#giveTest").addClass("active");
});
</script>
</head>
<body>
<% ArrayList<Subject> subList=(ArrayList<Subject>)request.getAttribute("subjectDisplay");%>
<div class="form">
<div class="tab-group">
 <form action="${pageContext.request.contextPath}/TestController" method="post">

 <div style="color: white;">
	<table border="1" style="width:100%;">
	<tr>
	<th>Subject Id</th>
	<th>Subject Name</th>
	<th>Examination Start Date</th>
	<th>Examination End Date</th>
	<th>Select</th>
	</tr>
	<%for (Subject sub:subList){%>
		<tr>
			<td><%=sub.getSubjectId()%></td>
			<td><%=sub.getSubject()%></td>
			<td><%=sub.getStart()%></td>
			<td><%=sub.getEnd()%></td>
			<td><input type="radio" name="subjectId" value="<%=sub.getSubjectId()%>"></td>
		</tr>
	<% } %>
</table>
 </div><br>
 <input type="submit" class="button button-block" name="giveTest">
</form>
</div>
 <form action="${pageContext.request.contextPath}/Student/student.jsp" method="post">
 <input type="submit" class="button-block" value="Back">
 </form>
</div>
</body>
</html>