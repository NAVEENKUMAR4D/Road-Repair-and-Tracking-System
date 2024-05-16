<%-- 
    Document   : removeAdministrator
    Created on : 25-Dec-2023, 10:25:35 PM
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
        // Fetching administrator details from the form
        String adminName = request.getParameter("username");
        String adminId = request.getParameter("adminId");

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM ADMINISTRATOR WHERE Username = ? AND AdminID = ?");
        preparedStatement.setString(1, adminName);
        preparedStatement.setString(2, adminId);

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Administrator Removed successfully.");
        } else {
            out.println("Failed to Remove administrator.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
