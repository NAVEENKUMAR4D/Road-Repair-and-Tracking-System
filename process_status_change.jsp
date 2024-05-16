<%-- 
    Document   : process_status_change
    Created on : 09-Jan-2024, 3:16:05 AM
    Author     : apiiit123
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="RRTS.*"%>

<%
    
    try{
       // Retrieve form parameters
        String complaintID = request.getParameter("complaintID");
        String newStatus = request.getParameter("newStatus");
        
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");

        String sql = "UPDATE PRIORITY SET STATUS = ? WHERE ComplaintID = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1, newStatus);
        pst.setString(2, complaintID);

        // Execute the update
        int rowsAffected = pst.executeUpdate();

        if (rowsAffected > 0) {
            out.println("<h3>Status updated successfully.</h3>");
        } else {
            out.println("<h3>Error updating status.</h3>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Something went wrong !! Please try again"+e);
    } 

%>

</body>
</html>


        