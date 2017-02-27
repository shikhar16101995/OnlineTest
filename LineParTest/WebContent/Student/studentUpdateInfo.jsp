<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.test.bean.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylemy.css"/>
    <script src="../javascript/homepage.js" type="text/javascript"></script>
    <script>
$(document).ready(function() {
        $("#updateInfo").addClass("active");
});

function Validation() {
	    var x = document.getElementById("updatePassword").value;
	    var y = document.getElementById("confirmPassword").value;
	    if(x!=y){
	    	alert("Password doesn't match.");
	    	 document.getElementById('confirmPassword').value="";
	    	 document.getElementById('updatePassword').value="";
	    	return false;
	    }
	    return true;
	    
}
</script>
<style>
label.active {
  transform:translateY(-25px);
  }
</style>
</head>
<body>
<div class="form">
<form action="../StudentHelper?update=update" method="post">
          
          <div class="top-row">
          	<div class="field-wrap">
            <label class="active highlight">
           Username<span class="req">*</span>
            </label>
            <input type="text"  name="updateName" value="${studentUpdate.name}" required autocomplete="off"/>
            </div>
			<div class="field-wrap">
            <label class="active highlight">            
          Update Email Address<span class="req">*</span>
            </label>
            <input type="email"  name="updateEmail" value="${studentUpdate.email}" required autocomplete="off"/>
          	</div>
            <div class="field-wrap">
            <label class="active highlight">            
            Update Password<span class="req">*</span>
            </label>
            <input type="password"  name="updatePassword" id="updatePassword" required autocomplete="off"/>
          	</div>   
          	<div class="field-wrap">
            <label class="active highlight">            
           Confirm Password<span class="req">*</span>
            </label>
            <input type="password"  name="confirmPassword" id="confirmPassword" required autocomplete="off" onBlur="Validation();"/>
          	</div>  
          	<div class="field-wrap">
            <label class="active highlight">            
          Update Phone No(10 digits)<span class="req">*</span>
            </label>
            <input type="tel"  name="updatePhone" pattern="^\d{10}$" value="${studentUpdate.phone}" required autocomplete="off" />
            </div>
            
          <input type="submit" class="button button-block" value="Submit">
          </div><!-- top-row -->
          </form>
          <form action="./Student/student.jsp" method="post" name="backForm">
          <button class="back-button">BACK</button>
          </form>
</div>
</body>
</html>