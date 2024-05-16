<%-- 
    Document   : supervisor
    Created on : 06-Dec-2023, 8:54:46 PM
    Author     : apiiit123
--%>
<%@page import="RRTS.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="supervisor.css">
    <title>Supervisor Dashboard</title>
    <style>
        body {
            background: linear-gradient(to right, #00ff00, #ffff00);
        }

        .container-fluid {
            padding-left: 0;
            padding-right: 0;
        }

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
    <div class="container-fluid">
        <!-- Bootstrap Sidebar -->
        <div class="sidebar">
            <a class="active" href="supervisor.jsp">Home</a>
            <a href="Area_complaints.jsp">Complaint List</a>
            <a href="update_priority.html">Update Priority Data</a>
            <a href="Repair_schedule.jsp">Repair Schedule</a>
            <a href="repair_statistics.jsp">Repair Statistics</a>
            <a href="update_priority.html">Resource Management</a>
            <a href="change_Status.html">Change Status of complaint</a>
            <a href="Logout.jsp">Logout</a>
        </div>

        <!-- Content -->
        <div class="content">
            <center><h1>Hello, <%=Supervisor.uname%></h1></center>

            <!-- Your content goes here -->
            <div>
                <h2>Welcome to the Supervisor Dashboard!</h2>
                <p>This is where you can <strong>manage</strong> various tasks and view important information.</p>
                <!-- Add more content as needed -->
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
