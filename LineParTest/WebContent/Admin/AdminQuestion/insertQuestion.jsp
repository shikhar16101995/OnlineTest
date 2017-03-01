<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>

    <%@page import="com.test.bean.Subject" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style1.css"/>
    <script src="${pageContext.request.contextPath}/javascript/homepage.js" type="text/javascript"></script>
</head>
<body>
<div class="form"> 
      <div class="tab-content">
<h1>Please enter the question</h1>

</div>
 <br>
 <div>
 <form action="${pageContext.request.contextPath}/QuestionController">
  <% Subject sub=(Subject)session.getAttribute("sessionSubject"); %>
  You requested to insert a question for the subject: <%=sub.getSubject() %>
 <br>
<input type="hidden" name="subject" value="0">
 Subject ID<input type="text" name="subjectId" value="<%=sub.getSubjectId() %>" "fixed value" readonly >
 Question<input type="text" name="question"><br>
 Option 1 <input type="text" name="op1">
 Option 2 <input type="text" name="op2">
 Option 3 <input type="text" name="op3" >
 Option 4 <input type="text" name="op4">
 <br>
 Answer <input type="number" name="answer">
 </div>
 <br>
 <input type="submit" value="submit" name="insert">
 </form>
 <form action="${pageContext.request.contextPath}/Admin/adminSignIn.jsp" method="post">
 <input type="submit" class="button-block" value="Back">
 </form>
</div>
</body>
</html>