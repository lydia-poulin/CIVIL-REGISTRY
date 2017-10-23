<%-- 
    Document   : UserProfile
    Created on : Oct 23, 2017, 3:28:06 PM
    Author     : student31
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
         <form name="frm">
            <center>
            <u><h2>mY Profile</h2></u>
             <table border="0">
                    
                    <%
                         String sel="select * from tbl_registration";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                                <tr><td><b>NAME:</b></td><td><%=rs.getString("user_name")%></td></tr>
                                <tr><td><b>ADDRESS WITH PIN NUMBER</b></td><td><%=rs.getString("user_address")%></td></tr>
                                <tr><td><b>GENDER</b></td><td><%=rs.getString("user_gender")%></td></tr>
                                <tr><td><b>DATE OF BIRTH</b></td><td><%=rs.getString("user_dob")%></td></tr>
                                <tr><td><b>QUALIFICATION</b></td><td><%=rs.getString("user_quali")%></td></tr>
                                <tr><td><b>PHONE NUMBER</b></td><td><%=rs.getString("user_phno")%></td></tr>
                                 <tr><td><b>EMAIL ID</b></td><td><%=rs.getString("user_email")%></td></tr>
                                <tr><td><b>AADHAR NUMBER </b></td><td><%=rs.getString("user_aadhar")%></td></tr>
                                
                                <%
                                    }
                    %>
                    
                </table>
            </center>
        </form>
        
    </body>
</html>
