<%-- 
    Document   : addAdministrator
    Created on : 25-Dec-2023, 10:13:37 PM
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
        String adminId = request.getParameter("adminId");
        String adminName = request.getParameter("username");
        String adminPassword = request.getParameter("pws");

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO ADMINISTRATOR (AdminID, Username, Password) VALUES (?, ?, ?)");
        preparedStatement.setString(1, adminId);
        preparedStatement.setString(2, adminName);
        preparedStatement.setString(3, adminPassword);

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Administrator added successfully.");
        } else {
            out.println("Failed to add administrator.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
