<%-- 
    Document   : removeClerk
    Created on : 25-Dec-2023, 9:35:54 PM
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
        // Fetching clerk details from the form
        String clerkName = request.getParameter("username");
        String clerkID = request.getParameter("clerkID");

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM CLERK WHERE Username = ? AND ClerkID = ?");
        preparedStatement.setString(1, clerkName);
        preparedStatement.setString(2, clerkID);

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Clerk Removed successfully.");
        } else {
            out.println("Failed to Remove clerk.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
