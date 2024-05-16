<%-- 
    Document   : Logout
    Created on : 24-Dec-2023, 11:56:05 PM
    Author     : apiiit123
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="RRTS.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to RRTS</title>
        <script>
            function showMessage() {
                alert("You have been successfully logged out.");
            }
            
            function redirectToIndex() {
                window.location.href = "index.html";
            }
        </script>
    </head>
    <body>
        <script>
            showMessage();
            redirectToIndex();
        </script>
        <!-- This body section is used only to trigger the JavaScript functions on page load -->
        You will be redirected to the home page.
    </body>
</html>

