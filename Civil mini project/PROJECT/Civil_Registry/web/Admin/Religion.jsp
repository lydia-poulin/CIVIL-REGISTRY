<%-- 
    Document   : StateDetails
    Created on : Sep 25, 2017, 10:26:43 AM
    Author     : student31
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Religion Details</title>
    </head>
    <body>
         <%
            String editId="";
            String religionname="";
            if(request.getParameter("eid")!=null)
            {
                String sel="select * from tbl_religion where religion_id='"+request.getParameter("eid")+"'";
                ResultSet rs=obj.select(sel);
                if(rs.next())
                {
                    religionname=rs.getString("religion_name");
                    editId=rs.getString("religion_id");
                }
            }
            if(request.getParameter("did")!=null)
            {
                String str="delete from tbl_religion where religion_id='"+request.getParameter("did")+"'";
                boolean b=obj.insert(str);
                if(b)
                {
                    response.sendRedirect("Religion.jsp");
                }
                out.println(b);
            }
            if(request.getParameter("submit")!=null)
            {
                String rname=request.getParameter("rname");
               
                   if(!request.getParameter("hid").equals(""))
                     {
                     String hid=request.getParameter("hid");
                     String str="update tbl_religion set religion_name='"+rname+"' where religion_id="+hid;
                     boolean b=obj.insert(str);
                     if(b==true)
                         out.print("success");
                     else
                         out.print(str);
                     }
               else
                   
               {
                String str="insert into tbl_religion(religion_name)values('"+rname+"')";
                boolean b=obj.insert(str);
                if(b=true)
                    out.print("success");
                else
                    out.print(str);
            }}
            
        %>
        <form name="frm">
            <center>
                <input type="hidden" name="hid" value="<%=editId%>">
            <table>
                <tr><h1>Religion Details</h1></tr>
                <tr><td>Religion Name</td><td><input type="text" name="rname" id="rname" value="<%=religionname%>"></td></tr>
                <tr><td><input type="submit" name="submit" value="submit" onClick="return validation()"></td>
                    <td><input type="reset" value="Cancel" name="cancel"</td>
                </tr>
            </table>
                <table>
                    <tr><td><u><h2>State List</h2></u></td></tr>
                    <%
                         String sel="select * from tbl_religion";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                    <tr><td><%=rs.getString("religion_name")%></td>
                        <td><a href="Religion.jsp?eid=<%=rs.getString("religion_id")%>">Edit</a></td>
                        <td><a href="Religion.jsp?did=<%=rs.getString("religion_id")%>">Delete</a></td>
                    </tr>
                                <%
                                    }
                    %>
                    
                </table>
                </center>
        </form>
    </body>
</html>
