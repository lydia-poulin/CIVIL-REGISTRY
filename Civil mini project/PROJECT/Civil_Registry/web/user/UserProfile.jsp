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
        <title>CivilRegistry::MyProfile</title>
    </head>
    <body>
         <form name="frm">
            <center>
            <h1 align="center"><font color="blue"><u>MY PROFILE</u></font></h1>
             <table border="0">
                    
                    <%
                         String sel="select * from tbl_registration r,tbl_aadhardetails a where r.user_aadhar=a.aadhar_number";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                                <tr><td><br><b>AADHAR NUMBER: </b></td><td><br><%=rs.getString("user_aadhar")%></td></tr>
                                <tr><td><br><b>NAME:</b></td><td><br><%=rs.getString("aadhar_name")%></td></tr>
                                <tr><td><br><b>ADDRESS:</b></td><td><br><%=rs.getString("aadhar_address")%></td></tr>
                                <tr><td><br><b>GENDER:</b></td><td><br><%=rs.getString("aadhar_gender")%></td></tr>
                                <tr><td><br><b>DATE OF BIRTH:</b></td><td><br><%=rs.getString("aadhar_dob")%></td></tr>
                                <tr><td><br><b>QUALIFICATION:</b></td><td><br><%=rs.getString("user_quali")%></td></tr>
                                <tr><td><br><b>PHONE NUMBER:</b></td><td><br><%=rs.getString("aadhar_mobile")%></td></tr>
                                 <tr><td><br><b>EMAIL ID:</b></td><td><br><%=rs.getString("aadhar_email")%></td></tr>
                                <tr><td><br><input type="button" name="edit" value="Edit" onclick="window.location = 'EditProfile.jsp?eid=<%=rs.getString("user_aadhar")%>';"><td></tr>  
                                <%
                                    }
                    %>
                  
            
             </table>
            
            </center>
        </form>
        
    </body>
</html>
