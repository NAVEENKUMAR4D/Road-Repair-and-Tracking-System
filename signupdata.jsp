<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        
        // Get form parameters
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
        
        PreparedStatement pst = conn.prepareStatement("INSERT INTO USERS (name, email, mobile, password) VALUES (?, ?, ?, ?)");
          
        pst.setString(1, username);
        pst.setString(2, email);
        pst.setString(3, phone);
        pst.setString(4, pass);
        
        int rowsAffected = pst.executeUpdate();
        
        if (rowsAffected > 0) {
            // Display alert message
            %> 
            <script>
                function showMessage() {
                    alert("Your Sign up is Success");
                }
                function redirectToLogin() {
                    window.location.href = "userlogin.html";
                }
                showMessage();
                redirectToLogin();
            </script>
            <% 
        } else {
            out.println("Sign up failed. No rows were affected.");
        }
    }
    catch(Exception e){       
        out.println("Something went wrong !! Please try again"+e);       
    }      
%>
