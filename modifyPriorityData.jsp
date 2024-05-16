<%-- 
    Document   : modifyPriorityData
    Created on : 24-Dec-2023, 10:09:22 PM
    Author     : apiiit123
--%>

<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        int PRIORITY_ORDER = Integer.parseInt(request.getParameter("pq"));   
        int CEMENT = Integer.parseInt(request.getParameter("cement"));
        int SAND_TRIPS= Integer.parseInt(request.getParameter("sand"));
        int WATER = Integer.parseInt(request.getParameter("water"));
        int LABOURERS = Integer.parseInt(request.getParameter("labourers"));
        int MACHINES = Integer.parseInt(request.getParameter("Machines"));
        int ComplaintID = Integer.parseInt(request.getParameter("ComplaintID"));
        
        String Area = request.getParameter("area");
        
        
        
        
  
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
        
        // Create a PreparedStatement
        PreparedStatement preparedStatement = conn.prepareStatement(
                "UPDATE PRIORITY " +
                "SET PRIORITY_ORDER = ?, CEMENT = ?, SAND_TRIPS = ?, WATER = ?, LABOURERS = ?, MACHINES = ? " +
                "WHERE ComplaintID = ? AND AREA = ?");

        // Set values for parameters
        preparedStatement.setInt(1, PRIORITY_ORDER);
        preparedStatement.setInt(2, CEMENT);
        preparedStatement.setInt(3, SAND_TRIPS);
        preparedStatement.setInt(4, WATER);
        preparedStatement.setInt(5, LABOURERS);
        preparedStatement.setInt(6, MACHINES);
        preparedStatement.setInt(7, ComplaintID);
        preparedStatement.setString(8, Area);

        // Execute the update query
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Update successful. Rows affected: " + rowsAffected);
        } else {
            out.println("No rows were updated.");
        } 
        
        %><li><a href="supervisor.jsp">Home</a></li><%
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
