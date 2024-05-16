<%-- 
    Document   : complaintlist
    Created on : 05-Dec-2023, 11:39:35 PM
    Author     : apiiit123
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint List</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            thead th, tbody td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            thead th {
                background-color: #f2f2f2;
            }

            tbody tr:nth-child(even) {
                background-color: #f9f9f9;
            }
        </style>
    </head>
    <body style="background: linear-gradient(to right, #00ff00, #ffff00);">
        <%
            try {   
                Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
                //PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS where Area=?;");
                PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS;");
                //pst.setString(1, Supervisor.area);
                ResultSet rs = pst.executeQuery();
                %><table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Road Name</th>
                            <th>Area</th>
                            <th>Location</th>
                            <th>Telephone</th>                        
                            <th>Description</th>
                            <th>Comments</th>
                            <th>ComplaintID</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% while(rs.next()) { %>
                        <tr>
                            <td><%= rs.getString("Name") %></td>
                            <td><%= rs.getString("Email") %></td>
                            <td><%= rs.getString("Roadname") %></td>
                            <td><%= rs.getString("Area") %></td>
                            <td><%= rs.getString("Location") %></td>
                            <td><%= rs.getString("Telephone") %></td>
                            <td><%= rs.getString("Description") %></td>
                            <td><%= rs.getString("Comments") %></td>
                            <td><%= rs.getInt("ComplaintID") %></td>
                            <td><%= rs.getString("STATUS") %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            <%
            }
    catch(Exception e) {
        out.println("Something went wrong !! Please try again\n"+e);       
    }
%>
    </body>
</html>

