<%-- 
    Document   : state
    Created on : Oct 3, 2017, 10:12:09 AM
    Author     : student29
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>State Details</title>
    </head>
    <body>
         <%
            String editId="";
            String statename="";
            if(request.getParameter("eid")!=null)
            {
                String sel="select * from tbl_state where state_id='"+request.getParameter("eid")+"'";
                ResultSet rs=obj.select(sel);
                if(rs.next())
                {
                    statename=rs.getString("state_name");
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
            String submit=request.getParameter("sub");
            if(submit!=null){
                String state=request.getParameter("txt_state");
                if(request.getParameter("hid")!="")
                {
                    String up="update tbl_state set state_name='"+state+"' where state_id='"+request.getParameter("hid")+"'";
                    boolean b=obj.insert(up);
                }
                String ins="insert into tbl_state(state_name)values('"+state+"')";
                boolean b=obj.insert(ins);
                out.println(b);
                
            }
            
        %>
        <form name="frm">
            <center>
                <input type="hidden" name="hid" value="<%=editId%>">
            <table>
                <tr><h1>State Details</h1></tr>
                <tr><td>State Name</td><td><input type="text" name="txt_state" id="state" value="<%=statename%>"></td></tr>
                <tr><td><input type="submit" name="sub" value="Save"onClick="return validation()"></td>
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
