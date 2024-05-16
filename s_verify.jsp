<%-- 
    Document   : s_verify
    Created on : 06-Dec-2023, 8:46:54 PM
    Author     : apiiit123
--%>

<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String Username = request.getParameter("unames");   
        String Password = request.getParameter("pwds");
        
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
        
        PreparedStatement pst = conn.prepareStatement("Select Username,Password,Area from SUPERVISOR where Username=? and Password=?");
        pst.setString(1, Username);
        pst.setString(2, Password);
        ResultSet rs = pst.executeQuery();   
        
        if(rs.next()) {          
           out.println("Valid login credentials");
           Supervisor.area= rs.getString("Area");
           Supervisor.uname = Username;
           out.println(Username);
            BufferedWriter writer = new BufferedWriter(new FileWriter("/home/apiiit123/NetBeansProjects/RRTS/web/Text/Username.txt"));
            writer.write(Supervisor.uname);
            writer.flush();
            writer.close();
            writer = new BufferedWriter(new FileWriter("/home/apiiit123/NetBeansProjects/RRTS/web/Text/Area.txt"));
            writer.write(Supervisor.area);
            writer.flush();
            writer.close();
            writer = new BufferedWriter(new FileWriter("/home/apiiit123/NetBeansProjects/RRTS/web/Text/status.txt"));
            writer.write("logged in");
            writer.flush();
            writer.close();%>
            <jsp:forward page = "supervisor.jsp"/>
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