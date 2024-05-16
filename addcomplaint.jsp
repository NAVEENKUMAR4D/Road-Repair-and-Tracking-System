<%-- 
    Document   : complaintlist
    Created on : 05-Dec-2023, 11:39:35 PM
    Author     : apiiit123
--%>

<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String Name = request.getParameter("name");   
        String Email = request.getParameter("email");
        String RoadName = request.getParameter("roadname");
        String Area = request.getParameter("area");   
        String Location = request.getParameter("location");
        String Telephone = request.getParameter("telephone");
        String Description = request.getParameter("description");
        String Comments = request.getParameter("comments");
       
        
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
        
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM COMPLAINTS ORDER BY ComplaintID DESC LIMIT 1;");
        ResultSet rs = pst.executeQuery();
        rs.next();
        int ComplaintID = rs.getInt("ComplaintID");
        pst = conn.prepareStatement("INSERT INTO COMPLAINTS (Name, Email, Telephone, RoadName, Location, Area, Description, Comments, ComplaintID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        pst.setString(1, Name);
        pst.setString(2, Email);
        pst.setString(3, Telephone);
        pst.setString(4, RoadName);
        pst.setString(5, Location);
        pst.setString(6, Area);
        pst.setString(7, Description);
        pst.setString(8, Comments);
        pst.setInt(9, ComplaintID + 1);
        
        pst.executeUpdate();
 
        out.println("Complaint Lodged. Thanks a lot for informing us. The ComplaintID is:"+(ComplaintID+1));
        %><li><a href="index.html">HOME</a></li><%
    }
     catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      
%>

