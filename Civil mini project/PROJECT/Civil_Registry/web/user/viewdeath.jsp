<%-- 
    Document   : viewdeath
    Created on : Oct 23, 2017, 3:28:18 PM
    Author     : student32
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CIVIL REGISTRY::VIEW DEATH</title>
        <font color="blue">
<h1 align="center"><u>VIEW DEATH CERTIFICATE</u></h1></font>
    </head>
    <body>
        <center>
        <form name="frm">
            <table border="0">
            <%
                String sel="select * from tbl_death d,tbl_religion r where d.religion_id=r.religion_id";
                ResultSet rs=obj.select(sel);
                while(rs.next())
            {
                %>              
                <tr><td><b>DATE OF DEATH:</b></td><td><%=rs.getString("death_date")%></td></tr>
                <tr><td><b>DEATH PLACE:</b></td><td><%=rs.getString("death_dplace")%></td></tr>
                <tr><td><b>NAME OF DECEASED:</b></td><td><%=rs.getString("death_name")%></td></tr>
                <tr><td><b>DECEASED FATHER/HUSBAND NAME :</b></td><td><%=rs.getString("death_fhname")%></td></tr>
                <tr><td><b>GENDER OF DECEASED:</b></td><td><%=rs.getString("death_gender")%></td></tr>
                <tr><td><b>AGE OF DECEASED:</b></td><td><%=rs.getString("death_age")%></td></tr>
                <tr><td><b>ADDRESS OF DECEASED :</b></td><td><%=rs.getString("death_address")%></td></tr>
                <tr><td><b>INFORMER NAME:</b></td><td><%=rs.getString("death_informer")%></td></tr>
                <tr><td><b>INFORMER ADDRESS:</b></td><td><%=rs.getString("death_infoadd")%></td></tr>
                <tr><td><b>DECEASED HOME PLACE:</b></td><td><%=rs.getString("death_place")%></td></tr>
                <tr><td><b>RELIGION NAME:</b></td><td><%=rs.getString("religion_name")%></td></tr>
                <tr><td><b>OCCUPATION OF DECEASED:</b></td><td><%=rs.getString("death_occ")%></td></tr>
                <tr><td><b>TREATMENT GIVEN:</b></td><td><%=rs.getString("death_treatment")%></td></tr>
                <tr><td><b>REASON OF DEATH:</b></td><td><%=rs.getString("death_reason")%></td></tr>
                <tr><td><b>Any disease:</b></td><td><%=rs.getString("death_disease")%></td></tr>
                <tr><td><b>Whether he/she is a smoker:</b></td><td><%=rs.getString("death_smoking")%></td></tr>
                <tr><td><b>Whether he/she is addicted to alcohol:</b></td><td><%=rs.getString("death_alcohol")%></td></tr>
                 <%
            }
                %> 
                
         </table>
            </form>   
    </center>       
    </body>
</html>
