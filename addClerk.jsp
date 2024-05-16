<%-- 
    Document   : addClerk
    Created on : 25-Dec-2023, 9:28:12 PM
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
        String ClerkName = request.getParameter("username");
        
        String Password = request.getParameter("pws");

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO CLERK (Username,Password) VALUES (?, ?)");
        preparedStatement.setString(1, ClerkName);
        preparedStatement.setString(2, Password);
        

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Clerk added successfully.");
        } else {
            out.println("Failed to add Clerk.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
