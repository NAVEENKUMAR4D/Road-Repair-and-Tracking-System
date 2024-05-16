<%-- 
    Document   : view_my_complaints
    Created on : 24-Dec-2023, 12:39:52 AM
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
            int ComplaintID = 0;
            try {   
            
                String Username = request.getParameter("username");   
                
                String complaintIdString = request.getParameter("complaintId");

                // Convert the string to an integer
                ComplaintID = Integer.parseInt(complaintIdString);
                
                Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
                
                PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS where Name=? AND ComplaintID=?;");
                
                pst.setString(1, Username);
                pst.setInt(2, ComplaintID);
                
                ResultSet rs = pst.executeQuery();
                %><table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Telephone</th>
                            <th>Road Name</th>
                            <th>Area</th>
                            <th>Location</th>
                            <th>Description</th>
                            <th>Comments</th>
                            <th>ComplaintID</th>
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

