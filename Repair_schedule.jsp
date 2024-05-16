<%-- 
    Document   : Repair_schedule
    Created on : 09-Dec-2023, 12:33:54 AM
    Author     : apiiit123
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Repair Schedule</title>

    <style>
        body {
            background-color: #e9faff;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body bgcolor="#e9faff">
    <table border="1">
        <thead>
            <tr>
                <th>Complaint ID</th>
                <th>Area</th>
                <th>Cement</th>
                <th>Sand Trips</th>
                <th>Water</th>
                <th>Labourers</th>
                <th>Machines</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

                PreparedStatement st = conn.prepareStatement("SELECT * FROM PRIORITY ORDER BY PRIORITY_ORDER DESC;");
                ResultSet rs = st.executeQuery();

                PreparedStatement st2 = conn.prepareStatement("SELECT * FROM RESOURCES");
                ResultSet rs2 = st2.executeQuery();
                rs2.next();

                int CEMENT = rs2.getInt("CEMENT");
                int SAND = rs2.getInt("SAND_TRIPS");
                int WATER = rs2.getInt("WATER");
                int LABOURERS = rs2.getInt("LABOURERS");
                int MACHINES = rs2.getInt("MACHINES");

                while (rs.next()) {
                    String AREA = rs.getString("Area");
                    int CEMENT_R = rs.getInt("CEMENT");
                    int SAND_R = rs.getInt("SAND_TRIPS");
                    int WATER_R = rs.getInt("WATER");
                    int LABOURERS_R = rs.getInt("LABOURERS");
                    int MACHINES_R = rs.getInt("MACHINES");
                    int ComplaintID = rs.getInt("ComplaintID");
                    String status = rs.getString("STATUS");

                    if ((CEMENT_R <= CEMENT) && (SAND_R <= SAND) && (WATER_R <= WATER) && (LABOURERS_R <= LABOURERS) && (MACHINES_R <= MACHINES)) {
                        CEMENT -= CEMENT_R;
                        SAND -= SAND_R;
                        WATER -= WATER_R;
                        LABOURERS -= LABOURERS_R;
            %>
                        <tr>
                            <td><%= ComplaintID %></td>
                            <td><%= AREA %></td>
                            <td><%= CEMENT_R %></td>
                            <td><%= SAND_R %></td>
                            <td><%= WATER_R %></td>
                            <td><%= LABOURERS_R %></td>
                            <td><%= MACHINES_R %></td>
                            <td><%= status %></td>
                        </tr>
            <%
                    }
                }
            } catch (Exception e) {
                out.println("Something went wrong !! Please try again\n" + e);
            }
            %>
        </tbody>
    </table>
</body>
</html>
