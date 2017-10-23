<%-- 
    Document   : PanCardCertificate
    Created on : Oct 23, 2017, 2:11:31 PM
    Author     : student31
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PanCardCertificate</title>
    </head>
    <body>
        
        <form name="frm">
            <center>
            <u><h2>Pan Card Details</h2></u>
             <table border="0">
                    
                    <%
                         String sel="select * from tbl_pancard p, tbl_district d where p.district_id=d.district_id";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                                <tr><td><b>FULL NAME:</b></td><td><%=rs.getString("pan_firstname")%>    <%=rs.getString("pan_midname")%>     <%=rs.getString("pan_lastname")%></td></tr>
                                <tr><td><b>GENDER</b></td><td><%=rs.getString("pan_gender")%></td></tr>
                                <tr><td><b>DATE OF BIRTH</b></td><td><%=rs.getString("pan_dob")%></td></tr>
                                <tr><td><b>FATHER'S NAME</b></td><td><%=rs.getString("pan_ffirstname")%>       <%=rs.getString("pan_flastname")%></td></tr>
                                <tr><td><b>ADDRESS WITH PIN NUMBER</b></td><td><%=rs.getString("pan_address")%></td></tr>
                                <tr><td><b>EMAIL ID</b></td><td><%=rs.getString("pan_email")%></td></tr>
                                <tr><td><b>PHONE NUMBER</b></td><td><%=rs.getString("pan_phno")%></td></tr>
                                <tr><td><b>DISTRICT</b></td><td><%=rs.getString("district_name")%></td></tr>
                                <tr><td><b>AADHAR NUMBER </b></td><td><%=rs.getString("pan_aadhar")%></td></tr>
                                 <tr><td><b>SOURCE OF INCOME</b></td><td><%=rs.getString("pan_incomesource")%></td></tr>
                                <%
                                    }
                    %>
                    
                </table>
            </center>
        </form>
    </body>
</html>
