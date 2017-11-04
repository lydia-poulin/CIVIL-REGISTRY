<%-- 
    Document   : AadharVerification
    Created on : Oct 28, 2017, 2:36:13 PM
    Author     : student31
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<jsp:useBean id="ma" class="mail.mailconnection"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CivilRegistry::AadharVerification</title>
    </head>
    <body>
        <% 
            String aadhar="";
                if(request.getParameter("useraadhar")!=null)
                 {
                     String useraadhar=request.getParameter("useraadhar");
                     String sel="select count(*) as count from tbl_aadhardetails where aadhar_number='"+useraadhar+"'";
                     ResultSet rs=obj.select(sel);
                  if(rs.next())
                  {
        
                     aadhar=rs.getString("count");
                  
                     if(aadhar.equals("0"))
                     {
                         out.println("Failed");
                     }
                     else
                    {
                        String mailid="";
                        String mail="select aadhar_email from tbl_aadhardetails where aadhar_number='"+useraadhar+"'";
                         ResultSet rs1=obj.select(mail);
                        if(rs1.next())
                         {
                             mailid=rs1.getString("aadhar_email");
                         }
                         String to[]={mailid};
                         String subject="Verification Confirmed";
                         Random r=new Random();
                         int ran=r.nextInt(999+111);
                         String text="Verification code:"+ran+"\n Please login to verify..";
                         boolean x=ma.sendMail(to, subject, text);
                         if(x)
                         {
                           out.println("mail success");  
                         }
                         else
                         {
                             out.println("mail failed");
                         }
                         String ins="insert into tbl_verificationcode(aadhar_number,verify_random)values('"+useraadhar+"','"+ran+"')";
                         boolean b=obj.insert(ins);
                         if(b==true)
                         out.print("success");
                         else
                         out.print(ins);   
                      
                    }
                  }
                 }
        %>
       <form name="frm">
            <center>
           <h1 align="center"><font color="blue"><u>AADHAR VERIFICATION</u></font></h1>
             <table border="0">
                 <tr><td><b>AADHAR NUMBER</b></td><td><b>QUALIFICATION</b></td></tr>
                    <%
                         String sel="select * from tbl_registration";
                                    ResultSet rs=obj.select(sel);
                                    while(rs.next())
                                    {
                                    
                                %>
                                
             <tr><br>
                                      <td><br><%=rs.getString("user_aadhar")%></td>
                                      <td><br><%=rs.getString("user_quali")%></td>
                                      <td><br><input type="button" name="verify" value="Verify" onclick="window.location = 'AadharVerification.jsp?useraadhar=<%=rs.getString("user_aadhar")%>';"><td>
                                </tr>  
                                <%
                                    }
                    %>
                  
            
             </table>
            
            </center>
        </form>
        
    </body>
</html>
