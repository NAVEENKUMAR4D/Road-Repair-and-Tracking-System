<%-- 
    Document   : a_verify
    Created on : 19-Dec-2023, 12:37:15 AM
    Author     : apiiit123
--%>


<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String Username = request.getParameter("uname");   
        String Password = request.getParameter("pwds");
        
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
        
        PreparedStatement pst = conn.prepareStatement("Select Username,Password from ADMINISTRATOR where Username=? and Password=?");
        pst.setString(1, Username);
        pst.setString(2, Password);
        ResultSet rs = pst.executeQuery();   
        
        if(rs.next()) {          
           out.println("Valid login credentials");
           
           Administrator.uname = Username;
           out.println(Username);%>
            
            <jsp:forward page = "Administrator.jsp"/>
        <%
        }
        else {
           out.println("Invalid login credentials");
           %>Authentication failure.
            <jsp:include page = "index.html"/>
            <%
        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      
%>