<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/admin.css">
    <script src="./javascript/homepage.js" type="text/javascript"></script>
</head>
<body>
	<div class="form">
      
      	<ul class="tab-group">
        	<li class="tab " id="question"><a>Question</a>
        	<ul class="dropdown-content">
        		<li style="height: 49px;"></li>
        	 	
        		<li class="float"><a href="../AdminQuestion/?display1=display1"> Delete Question</a></li>
        		<li class="float"><a href="../AdminQuestion/?display2=display2">Insert Question</a></li>
        		<li  class="float"><a href="../AdminQuestion/?display3=display3">Update Question</a></li>
        		<li  class="float"><a href="../AdminQuestion/?display4=display4"> View All Questions</a></li>
        	</ul>
        	</li>
        	<li class="tab" id="updateInfo"><a>Student</a>
        	<ul class="dropdown-content">
        		<li style="height: 49px;"></li>
        		<li class="float"><a  href="../AdminStudentHelper?display=display">Delete Student</a></li>
        		<li class="float"><a  href="../AdminStudentHelper?search=search">Search Student</a></li>
        		<li class="float"><a  href="../AdminStudentHelper?displayAll=displayAll">View All Students</a></li>
        	</ul>
			 </li>
         	<li class="tab " id="subject" ><a>Subject</a>
         	<ul class="dropdown-content">
        		<li style="height: 49px;"></li>
        		<li class="float"><a href="../SubjectHelper?display=display">Delete Subject</a></li>
        		<li class="float"><a href="../SubjectHelper?display1=display1">Display Subject</a></li>
        		<li class="float"><a href="./AdminSubject/insertSubject.jsp">Insert Subject</a></li>
        		<li class="float"><a href="../SubjectHelper?display3=display3">Search Subject</a></li>
        		<li class="float"><a href="../SubjectHelper?display2=display2">Update Subject</a></li>
        	</ul>
        	</li>
        	<li class="tab " id="update" ><a>Admin</a>
        	<ul class="dropdown-content">
        		<li style="height: 49px;"></li>
        		<li class="float"><a href="../Admin/adminAdmin.jsp">Update Admin</a></li>
        	</ul>
        	</li>
		</ul>
	</div> <!-- /form -->
<form action="./QuestionController">
<input type="submit" name="display" value="display">
</form>
</body>
</html>