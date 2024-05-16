<%-- 
    Document   : removeSupervisor
    Created on : 25-Dec-2023, 1:02:17 AM
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
        String supervisorName = request.getParameter("username");
        String area = request.getParameter("area");
        

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM SUPERVISOR WHERE Username = ? AND Area = ?");
        preparedStatement.setString(1, supervisorName);
        preparedStatement.setString(2, area);

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Supervisor Removed successfully.");
        } else {
            out.println("Failed to Remove supervisor.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
