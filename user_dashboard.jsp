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
    
    <title>User Dashboard</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            padding-top: 20px;
        }

        .sidebar a {
            padding: 15px 25px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: black;
        }

        .content {
            margin-left: 260px;
            padding: 16px;
        }

        .bd {
            background: linear-gradient(to right, #00ff00, #ffff00);
        }
    </style>
</head>
<body class="bd">
    <!-- Sidebar -->
    <div class="sidebar">
        <a class="active" href="Home1.html">Home</a>
        <a href="complaint.jsp">Write A Complaint</a>
        <a href="TrackComplaint.html">Track My Complaints</a>
        <a href="Logout.jsp">Logout</a>
    </div>

    <!-- Content -->
    <div class="content">
        <center><h1>Hello, <%=User.uname%></h1></center>

        <!-- Your content goes here -->
        <div>
            <h2>Welcome to the User Dashboard!</h2>
            <p>This is where you can <strong>COMPLAINT</strong> and track your complaints.</p>
            <!-- Add more content as needed -->
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
