<%-- 
    Document   : ajax_district
    Created on : Oct 3, 2017, 10:16:41 AM
    Author     : student29
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
    
         <option value="statename">--select--</option>
<%
String sid=request.getParameter("id");
 String sel="select * from tbl_dist where stateid="+sid;
                            ResultSet rs=obj.select(sel);
                            while (rs.next())
                            { 
                            %>
                        <option value = "<%=rs.getString("distid")%>"><%=rs.getString("distname")%></option>
                        <%
                           }
                        %>

%>