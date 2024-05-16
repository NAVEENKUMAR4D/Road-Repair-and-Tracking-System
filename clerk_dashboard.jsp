<%-- 
    Document   : user_dashboard
    Created on : 23-Dec-2023, 11:10:23 PM
    Author     : apiiit123
--%>
<%@page import="RRTS.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Clerk Dashboard</title>
    <style>
        .ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .ul li {
            float: left;
            width: 30%; /* Each list item takes up 25% of the width */
        }

        .ul li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .ul li a:hover {
            background-color: #ddd;
            color: black;
        }

        .ul li.active {
            background-color: #4CAF50;
        }

        .ul li.last {
            float: right;
        }
    </style>

    
</head>
    <body class="bd" style="background: linear-gradient(to right, #00ff00, #ffff00);">
        <div class="nb">
            <ul class="ul">
                <li class='active'><a href="Home1.html"><span>Home</span></a></li>
                <li class = "li"><a href="complaint.jsp"><span>Write A Complaint</span></a></li>
                <li class='last'><a href="logout.jsp"><span>Logout</span></a></li>
            </ul>
        </div>

        <br>
        <br>
        <br>
        <center><h1>Hello, <%=CLERK.uname%></h1></center>

        <!-- Your content goes here -->
        <div class="content">
            <h2>Welcome to the CLerk Dashboard!</h2>
            <p>This is where you can write <strong>COMPLAINTS</strong> .</p>
            <!-- Add more content as needed -->
        </div>

</body>
</html>