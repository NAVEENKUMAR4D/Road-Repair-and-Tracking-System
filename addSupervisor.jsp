<%-- 
    Document   : addSupervisor
    Created on : 25-Dec-2023, 12:51:13 AM
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
        String Password = request.getParameter("pws");

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        

        // Creating a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO SUPERVISOR (Username,Password,Area) VALUES (?, ?, ?)");
        preparedStatement.setString(1, supervisorName);
        preparedStatement.setString(2, Password);
        preparedStatement.setString(3, area);

        // Executing the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Supervisor added successfully.");
        } else {
            out.println("Failed to add supervisor.");
        }

        // Closing resources
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    }
%>
