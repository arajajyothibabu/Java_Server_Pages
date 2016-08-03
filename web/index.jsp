<%--
  Created by IntelliJ IDEA.
  User: Araja Jyothi Babu
  Date: 03-Aug-16
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>AJAX calls using Jquery in Servlet</title>
            
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<form id="user-form" action="ActionServlet">
    <h1>Checking User existence using Jquery in JSP and Servlet</h1>
    <input type="text" id="user-number" name="user-number" placeholder="Enter User Number"/>
    <input type="checkbox" id="user-check" name="user-check"/> Check Availability
    <br>
    <input type="text" id="user-name" name="user-name" placeholder="Enter User Name"/>
    <hr>
    <input type="submit" id="submit" value="Submit"/>
</form>
</body>
<script>
    $(document).ready(function () {
        $('#user-check').change(function (event) {
            if(!$(this).is(":checked"))
                return;
            var userNumber = $('#user-number').val();
            if(userNumber != ""){
                $.get('ActionServlet', { "user-number" : userNumber}, function (responseText) {
                    //console.log("response", responseText);
                    $('#user-name').val(responseText);
                });
            }else {
                //FIXME: Handle this properly
                alert("Enter User Number")
            }
        });
    });
</script>
</html>
