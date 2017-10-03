<%-- 
    Document   : PanCardRegist
    Created on : Sep 23, 2017, 2:19:02 PM
    Author     : student31
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pancard Registration</title>
        <script src="../Jquery/jquery.min.js"></script>
            <script>
                function seldistrict(staid)
                {
                    alert(staid);
                    $.ajax({url: "AjaxDistrict.jsp?stateid="+staid,success:function(result) {
                            $("#districtname").html(result);
                        }});

                }
            </script>
    </head>
    <body>
        <form name="frm">
            <%
                String stateid = "", districtid = "";
              String submit=request.getParameter("sub");
              if(submit!=null)
              {
                  String lastname=request.getParameter("txtlast");
                  String firstname=request.getParameter("txtfirst");
                  String middlename=request.getParameter("txtmiddle");
                  String gender=request.getParameter("txtgender");
                  String dob=request.getParameter("txtdob");
                  String flast=request.getParameter("txtffirst");
                  String ffirst=request.getParameter("txtflast");
                  String address=request.getParameter("txtaddress");
                  String email=request.getParameter("txtemail");
                  String phon=request.getParameter("txtphon");
                  String district=request.getParameter("districtname");
                  String aadhar=request.getParameter("txtaadhar");
                  String income=request.getParameter("income");
                  String proofid=request.getParameter("proofid");
                  String proofadd=request.getParameter("proofadd");
                  String proofdob=request.getParameter("proofdob");
                  
                  String ins="insert into tbl_pancard(pan_lastname,pan_firstname,pan_midname,pan_gender,pan_dob,pan_flastname,pan_ffirstname,pan_address,pan_email,pan_phno,district_id,pan_aadhar,pan_incomesource,pan_proofid,pan_proofaddress,pan_proofdob)values('"+lastname+"','"+firstname+"','"+middlename+"','"+gender+"','"+dob+"','"+flast+"','"+ffirst+"','"+address+"','"+email+"','"+phon+"','"+district+"','"+aadhar+"','"+income+"','"+proofid+"','"+proofadd+"','"+proofdob+"')";
                  boolean b=obj.insert(ins);
                  out.println(b);
              }
            %>
            <center>
            <table>
                <h1>Pancard Registration</h1>
                <tr><td><b>Full Name</b></td></tr>
                <tr><td>Last Name</td><td><input type="text" name="txtlast" id="txtfirst"></td></tr>
                <tr><td>First Name</td><td><input type="text" name="txtfirst" id="txtlast"></td></tr>
                <tr><td>Middle Name</td><td><input type="text" name="txtmiddle" id="txtmiddle"></td> </tr>
                   
                <tr><td>Gender</td>
                        <td><input type="radio" id="gender" value="male"name="txtgender">Male
                        <input type="radio" id="gender" value="female"name="txtgender">Female</td>
                </tr>
                 <tr><td>Date Of Birth</td><td><input type="text" name="txtdob" id="txtdob"</td></tr>
                 <tr><td><b>Father's Name</b></td></tr>
                 <tr><td>Last Name</td><td><input type="text" name="txtflast" id="txtffirst"></td></tr>
                 <tr><td>First Name</td><td><input type="text" name="txtffirst" id="txtflast"></td></tr>
                    
                    <tr><td>Address With Pin</td><td><textarea name="txtaddress" id="txtaddress"></textarea></td></tr>
                    <tr><td>Email</td><td><input type="text" name="txtemail" id="txtemail"></td></tr>
                    <tr><td>Phone  Number</td><td><input type="text" name="txtphon" id="txtphon"></td></tr>
                    <tr>
                        <td>State</td>
                        <td>
                            <select name="statename"id="statename"onChange="seldistrict(this.value)">
                                <option value="select">..Select..</option>
                                <%
                                    String sel = "select * from tbl_state";
                                    ResultSet rs = obj.select(sel);
                                    while (rs.next()) {

                                %>
                                <option value="<%=rs.getString("state_id")%>"<%if (stateid.equals(rs.getString("state_id"))) {%>selected=""<%}%>><%=rs.getString("state_name")%></option>
                                <%
                                    }
                                %>     
                            </select>
                        </td>
                    </tr>
                     <tr>
                        <td>District</td>
                        <td>
                             <select name="districtname" id="districtname">
                                <option value="select">..Select..</option>
                                <%
                                    String sel1 = "select * from tbl_district";
                                    ResultSet rs1 = obj.select(sel1);
                                    while (rs1.next()) {
                                %>
                                <option value="<%=rs1.getString("district_id")%>"<%if (districtid.equals(rs1.getString("district_id"))) {%>selected=""<%}%>><%=rs1.getString("district_name")%></option>      
                                <%
                                    }

                                %>

                            </select>   
                        </td>
                    </tr>
                    <tr><td>Aadhar Number</td><td><input type="text" name="txtaadhar" id="txtaadhar"></td></tr>
                    <tr><td><b>Source Of Income</b></tr>
                    <tr><td>Salary<input type = "checkbox" name = "income" value = "salary"></td>
                        <td>Income from Business<input type = "checkbox" name = "income" value = "bus"></td>
                    </tr>
                    <tr> <td>Income from House property<input type = "checkbox" name = "income" value = "house"></td>
                    </tr>
                    <tr><td>Proof Of Identity</td><td><input type = "file" name = "proofid" accept = "image/*" /></td></tr>
                   
                    <tr><td>Proof Of Address</td><td><input type = "file" name = "proofadd" accept = "image/*" /></td></tr>
                    <tr><td>Proof Of Date Of Birth</td><td><input type = "file" name = "proofdob" accept = "image/*" /><td></tr>
                     <tr>
                         <td><input type="reset"name="reset"value="RESET"</td>
                         <td><input type="submit" name="sub" value="SUBMIT"></td>
                         
                     </tr>
                    
                    
                    
            </table>
                               </center>
        </form>
    </body>
</html>
