<%-- 
    Document   : district
    Created on : Oct 3, 2017, 10:11:59 AM
    Author     : student29
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form name="frm">
             <%
              String editId="";
              String districtname="",stateid="";
              if(request.getParameter("eid")!=null)
              {
                  String sel="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";
                  ResultSet rs=obj.select(sel);
                  if(rs.next())
                  {
                      editId=request.getParameter("eid");
                      districtname=rs.getString("district_name");
                      stateid=rs.getString("state_id");
                  }
                  
              }
              if(request.getParameter("did")!=null)
              {
                 String str="delete from tbl_district where district_id='"+request.getParameter("did")+"'"; 
                 boolean b=obj.insert(str);
                 if(b)
                 {
                     response.sendRedirect("DistrictDetails.jsp");
                 }
                 out.println(b);
              }
              
            String submit=request.getParameter("sub");
            if(submit!=null){
                String district=request.getParameter("txt_district");
                String state=request.getParameter("statedetail");
                if(request.getParameter("hid")!="")
                {
                    String up="update tbl_district set state_id='"+state+"',district_name='"+district+"' where district_id='"+request.getParameter("hid")+"'";
                    boolean b=obj.insert(up);
                    if(b==true)
                    {
                        response.sendRedirect("DistrictDetails.jsp");
                    }
                    else
                    {
                        out.println(up);
                    }
                }
                else
                {
                   String ins="insert into tbl_district(state_id,district_name)values('"+state+"','"+district+"')";
                 boolean b=obj.insert(ins);
                 if(b==true)
                 {
                     response.sendRedirect("DistrictDetails.jsp");
                 }
                 else
                 {
                    out.println(b);  
                 }
                
                }
                
                
            }
            
        %>
  <center>
                <input type="hidden" name="hid" value="<%=editId%>">
            <table>
                <tr><h1>District Details</h1></tr>
                        <tr><td>State Name</td>
                            <td>
                                <select name="statedetail" id="statedetail">
                                    <option value="select">..Select..</option>
                                    <%
                                        String sel="select * from tbl_state";
                                        ResultSet rs=obj.select(sel);
                                        while(rs.next())
                                        {
                                    %>
                                    <option value="<%=rs.getString("state_id")%>"<%if(stateid.equals(rs.getString("state_id"))){%>selected=""<%}%>><%=rs.getString("state_name")%></option>
                                    <%}%>
                                </select>
                            </td>
                        </tr>
            
                <tr><td>District Name</td><td><input type="text" name="txt_district" id="district" value="<%=districtname%>"></td></tr>
               <tr><td><input type="submit" name="sub" value="Save"></td>
                    <td><input type="reset" value="Cancel" name="cancel"</td>
            </table>
                                <table>
                                           <tr><td><u><h2>State</h2></u></td><td><u><h2>District</h2></u></td></tr>
                    <%
                         String sell="select * from tbl_district d,tbl_state s where d.state_id=s.state_id";
                                   ResultSet rss=obj.select(sell); 
                                    while(rss.next())
                                    {
                                    
                                %>
                                           <tr><td><%=rss.getString("state_name")%></td>
                                               <td><%=rss.getString("district_name")%> </td>
                                               <td><a href="DistrictDetails.jsp?eid=<%=rss.getString("district_id")%>">Edit</a></td>
                                               <td><a href="DistrictDetails.jsp?did=<%=rss.getString("district_id")%>">Delete</a></td>
                                           </tr>
                                <%
                                    }
                    %>
                    
                </table>
                </center>
        </form>
    </body>
</html>



