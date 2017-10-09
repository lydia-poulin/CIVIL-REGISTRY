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
        <title>State Details</title>
         <script>
            
            function validate()
            {
                var status="true";
                
                var statename=/^[a-zA-z]{4,20}$/;
                var name=document.getElementById('sname').value;
               
                if((name.match(statename)))
                {
                    document.getElementById("valname").innerHTML="";
                }else
                { alert(name);
                    document.getElementById("valname").innerHTML="Invalid StateName";
                    status="false";
                }
                 if(status=="false")
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            </script>
    </head>
    <body>
         <%
            String editId="";
            String statename="";
            if(request.getParameter("eid")!=null)
            {
                String eid=request.getParameter("eid");
                String sel="select * from tbl_state where state_id="+eid;
                ResultSet rs=obj.select(sel);
                if(rs.next())
                {
                    statename=rs.getString("state_name");
                    editId=rs.getString("state_id");
                }
            }
            if(request.getParameter("did")!=null)
            {
                String str="delete from tbl_state where state_id='"+request.getParameter("did")+"'";
                boolean b=obj.insert(str);
                if(b)
                {
                    response.sendRedirect("StateDetails.jsp");
                }
                out.println(b);
            }
            if(request.getParameter("submit")!=null)
            {
                String sname=request.getParameter("sname");
               
                   if(!request.getParameter("hid").equals(""))
                     {
                     String hid=request.getParameter("hid");
                     String str="update tbl_state set state_name='"+sname+"' where state_id="+hid;
                     boolean b=obj.insert(str);
                     if(b==true)
                         out.print("success");
                     else
                         out.print(str);
                     }
               else
                   
               {
                String str="insert into tbl_state(state_name)values('"+sname+"')";
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
                <tr><h1>State Details</h1></tr>
                <tr><td>State Name</td><td><input type="text" name="sname" id="sname" value="<%=statename%>"><div style="color: red" id="valname"></div></td></tr>
                <tr><td><input type="submit" name="submit" value="Submit" onClick="return validate()"></td>
                    <td><input type="reset" value="Cancel" name="cancel"</td>
                </tr>
            </table>
                <table>
                    <tr><td><u><h2>State List</h2></u></td></tr>
                    <%
                         String sel="select * from tbl_state";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                    <tr><td><%=rs.getString("state_name")%></td>
                        <td><a href="StateDetails.jsp?eid=<%=rs.getString("state_id")%>">Edit</a></td>
                        <td><a href="StateDetails.jsp?did=<%=rs.getString("state_id")%>">Delete</a></td>
                    </tr>
                                <%
                                    }
                    %>
                    
                </table>
                </center>
        </form>
    </body>
</html>
