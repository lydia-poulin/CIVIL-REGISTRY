<%-- 
    Document   : marriage certificate
    Created on : Oct 23, 2017, 2:33:21 PM
    Author     : student30
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<!DOCTYPE html>







<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> </title>
    </head>
    <body>
    <center>
        <form name="frm">
             
           <table>
               <tr><th> <U> VIEW MARRIAGE REGISTRATION DETAILS</u></th></tr>
           
            

  <%
    String sel="select * from tbl_marriage m,tbl_religion r where m.m_hreligion=r.religion_id and m.m_wreligion=r.religion_id";
    ResultSet rs=obj.select(sel);
    while(rs.next())
    {
        %>
    
      
      
        <tr><td><b>  marriage date:  </b></td><td> <%=rs.getString("m_mdate")%></td></tr>
        <tr><td><b>  place of marriage:  </b></td><td> <%=rs.getString("m_pom")%></td></tr>
        <tr><td><b>  husband name:  </b></td><td> <%=rs.getString("m_hname")%></td></tr>
        <tr><td><b>  wife name:  </b></td><td> <%=rs.getString("m_wname")%></td></tr>
        <tr><td><b>  husband nation:  </b></td><td> <%=rs.getString("m_hnation")%></td></tr>
        <tr><td><b>  wife nation:  </b></td><td> <%=rs.getString("m_wnation")%></td></tr>
        <tr><td><b>  husband age:  </b></td><td> <%=rs.getString("m_hage")%></td></tr>
        <tr><td><b>  wife age:  </b></td><td> <%=rs.getString("m_wage")%></td></tr>
        <tr><td><b> husband dob:  </b></td><td> <%=rs.getString("m_hnation")%></td></tr>
        <tr><td><b>  wife dob:  </b></td><td> <%=rs.getString("m_wnation")%></td></tr>
        <tr><td><b>  husband occupation:  </b></td><td> <%=rs.getString("m_hoccu")%></td></tr>
        <tr><td><b>  wife occupation:  </b></td><td> <%=rs.getString("m_woccu")%></td></tr>
        <tr><td><b>  husband address:  </b></td><td> <%=rs.getString("m_haddress")%></td></tr>
        <tr><td><b>  wife address:  </b></td><td> <%=rs.getString("m_waddress")%></td></tr>
        <tr><td><b>  husband premarital status:  </b></td><td> <%=rs.getString("m_hpremstat")%></td></tr>
        <tr><td><b>  wife pre marital status:  </b></td><td> <%=rs.getString("m_wpremstat")%></td></tr>
        <tr><td><b>  husband father name:  </b></td><td> <%=rs.getString("m_hfname")%></td></tr>
        <tr><td><b>  wife father name:  </b></td><td> <%=rs.getString("m_wfname")%></td></tr>
        <tr><td><b> husband mother name:  </b></td><td> <%=rs.getString("m_hmname")%></td></tr>
        <tr><td><b>  wife mother name:  </b></td><td> <%=rs.getString("m_wmname")%></td></tr>
        <tr><td><b>  husband adhar:  </b></td><td> <%=rs.getString("m_hadhar")%></td></tr>
        <tr><td><b>  wife adhar:  </b></td><td> <%=rs.getString("m_wadhar")%></td></tr>
        <tr><td><b>  husband religion:  </b></td><td> <%=rs.getString("religion_name")%></td></tr>
        <tr><td><b> wife religion:   </b></td><td> <%=rs.getString("religion_name")%></td></tr>
        <tr><td><b>  witness name1:  </b></td><td> <%=rs.getString("m_witname1")%></td></tr>
        <tr><td><b>  witness name1:f marriage:  </b></td><td> <%=rs.getString("m_witadd1")%></td></tr>
        <tr><td><b>   witness name2:  </b></td><td> <%=rs.getString("m_witname2")%></td></tr>
        <tr><td><b>  witness address2:  </b></td><td> <%=rs.getString("m_witadd2")%></td></tr>
        <tr><td><b>  proof:</b></td><td> <%=rs.getString("m_proof")%></td></tr>
           </tr>
             
              <%
    }
%>    
            </table>
            </center>
      </form>
        </body>
</html>
       
