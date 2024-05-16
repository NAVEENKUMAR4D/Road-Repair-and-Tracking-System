<%-- 
    Document   : updated_resource_data
    Created on : 25-Dec-2023, 1:21:38 AM
    Author     : apiiit123
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>

<%

    try {
        // Fetching supervisor details from the form
        String Manpower = request.getParameter("manpower");
        String Machines = request.getParameter("machines");
        

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("UPDATE RESOURCES SET MACHINES = ?, LABOURERS = ?");
        
        preparedStatement.setString(1, Machines);
        preparedStatement.setString(2, Manpower);
        

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Resources updated successfully.");
        } else {
            out.println("Failed to update Resources.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
