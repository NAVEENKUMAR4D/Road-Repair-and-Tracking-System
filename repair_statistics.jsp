<%-- 
    Document   : repair_statistics
    Created on : 19-Dec-2023, 1:03:32 AM
    Author     : apiiit123
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Repair Statistics</title>
    <style>
          body {
            background: linear-gradient(to right, #00ff00, #ffff00);
            margin: 0;
            font-family: Arial, sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=Naveen@30");
            
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM WORK;");
            ResultSet rs = pst.executeQuery();
    %>
    
    <table>
        <thead>
            <tr>
                <th>ComplaintID</th>
                <th>AREA</th>
                <th>Percent Work Done</th>
                <th>CEMENT_USED</th>
                <th>SAND_TRIPS_USED</th>
                <th>WATER_USED</th>
                <th>LABOURERS_USED</th>
                <th>CEMENT_REQUIRED</th>
                <th>SAND_REQUIRED</th>
                <th>WATER_REQUIRED</th>
                <th>LABOURERS_REQUIRED</th>
            </tr>
        </thead>
        <tbody>
            <%
                while(rs.next()){
                    int CEMENT_USED = rs.getInt("CEMENT_USED");   
                    int SAND_USED = rs.getInt("SAND_TRIPS_USED");
                    int WATER_USED = rs.getInt("WATER_USED");
                    int LABOURERS_USED = rs.getInt("LABOURERS_USED");
                    String Area = rs.getString("Area");
                    int CEMENT_REQUIRED = rs.getInt("CEMENT_REQUIRED");   
                    int SAND_REQUIRED = rs.getInt("SAND_TRIPS_REQUIRED");
                    int WATER_REQUIRED = rs.getInt("WATER_REQUIRED");
                    int LABOURERS_REQUIRED = rs.getInt("LABOURERS_REQUIRED");   
                    int ComplaintID = rs.getInt("ComplaintID");
                    int PercentWork = rs.getInt("PercentDone");
            %>
            <tr>
                <td><%=ComplaintID%></td>
                <td><%=Area%></td>
                <td><%=PercentWork%></td>
                <td><%=CEMENT_USED%></td>
                <td><%=SAND_USED%></td>
                <td><%=WATER_USED%></td>
                <td><%=LABOURERS_USED%></td>
                <td><%=CEMENT_REQUIRED%></td>
                <td><%=SAND_REQUIRED%></td>
                <td><%=WATER_REQUIRED%></td>
                <td><%=LABOURERS_REQUIRED%></td>
            </tr>
            <%
                }
            }
            catch(Exception e){
                out.println("Something went wrong !! Please try again\n"+e);       
            }
            %>
        </tbody>
    </table>
</body>
</html>
