<%-- 
    Document   : Administrator
    Created on : 25-Dec-2023, 12:10:53 AM
    Author     : apiiit123
--%>


<%@page import="RRTS.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Administrator Dashboard</title>

    <!-- Bootstrap CSS -->
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
            background: linear-gradient(to right, #87CEEB, #00BFFF);
        }
    </style>
</head>
<body class="bd">
    <!-- Sidebar -->
    <div class="sidebar">
        <a class="active" href="Home1.html">Home</a>
        <a href="updated_resource_data.html">Edit Resources</a>
        <a href="complaintlist.jsp">Complaint List</a>
        <a href="addSupervisor.html">Add Supervisor</a>
        <a href="removeSupervisor.html">Remove Supervisor</a>
        <a href="addClerk.html">Add Clerk</a>
        <a href="removeClerk.html">Remove Clerk</a>
        <a href="Logout.jsp">Logout</a>
    </div>

    <!-- Content -->
    <div class="content">
        <h1 class="mt-4">Hello, <%=Administrator.uname%></h1>

        <!-- Your content goes here -->
        <div>
            <h2>Welcome to the Administrator Dashboard!</h2>
            
            <!-- Add more content as needed -->
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
