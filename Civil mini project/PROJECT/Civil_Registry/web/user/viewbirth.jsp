<%-- 
    Document   : viewbirth
    Created on : Oct 23, 2017, 2:31:08 PM
    Author     : student32
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CIVIL REGISTRY::VIEW BIRTH</title>
        <font color="blue">
<h1 align="center"><u>VIEW BIRTH CERTIFICATE</u></h1></font>
    </head>
    <body>
    <center>
        <form name="frm">
            <table border="0">
            <%
                String sel="select * from tbl_birth1,tbl_birth2 b2,tbl_religion r,tbl_district d where b2.religion_id=r.religion_id and b2.district_id=d.district_id ";
                ResultSet rs=obj.select(sel);
                while(rs.next())
            {
                %>              
                <tr><td><b>DATE OF BIRTH:</b></td><td><%=rs.getString("birth_dob")%></td></tr>
                <tr><td><b>GENDER:</b></td><td><%=rs.getString("birth_gender")%></td></tr>
                <tr><td><b>CHILD NAME:</b></td><td><%=rs.getString("birth_child")%></td></tr>
                <tr><td><b>FATHER NAME:</b></td><td><%=rs.getString("birth_father")%></td></tr>
                <tr><td><b>MOTHER NAME:</b></td><td><%=rs.getString("birth_mother")%></td></tr>
                <tr><td><b>ADDRESS:</b></td><td><%=rs.getString("birth_address")%></td></tr>
                <tr><td><b>PLACE OF BIRTH:</b></td><td><%=rs.getString("birth_pob")%></td></tr>
                <tr><td><b>HOSPITAL NAME:</b></td><td><%=rs.getString("birth_hospital")%></td></tr>
                <tr><td><b>WEIGHT OF CHILD(at the time of delivery):</b></td><td><%=rs.getString("birth_weight")%></td></tr>
                <tr><td><b>BIRTH TOWN:</b></td><td><%=rs.getString("birth_town")%></td></tr> 
                <tr><td><b>DISTRICT NAME:</b></td><td><%=rs.getString("district_name")%></td></tr> 
                <tr><td><b>RELIGION NAME:</b></td><td><%=rs.getString("religion_name")%></td></tr>
                <tr><td><b>FATHER OCCUPATION:</b></td><td><%=rs.getString("birth_focc")%></td></tr>
                <tr><td><b>MOTHER OCCUPATION:</b></td><td><%=rs.getString("birth_mocc")%></td></tr>
                <tr><td><b>FATHER EDUCATION:</b></td><td><%=rs.getString("birth_fedu")%></td></tr>
                <tr><td><b>MOTHER EDUCATION:</b></td><td><%=rs.getString("birth_medu")%></td></tr>
                <tr><td><b>MOTHER'S AGE:</b></td><td><%=rs.getString("birth_mage")%></td></tr>
                <tr><td><b>DELIVERY DETAILS:</b></td><td><%=rs.getString("birth_delivery")%></td></tr>
                <tr><td><b>DELIVERY DURATION:</b></td><td><%=rs.getString("birth_duration")%></td></tr>
              <%
            }
                %> 
                
                
            </table>
            </form>   
    </center>
    </body>
</html>
