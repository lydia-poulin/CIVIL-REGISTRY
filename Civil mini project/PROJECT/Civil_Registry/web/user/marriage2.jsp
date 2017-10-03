<%-- 
    Document   : marriage2
    Created on : Sep 23, 2017, 2:41:38 PM
    Author     : student30
--%>

<%-- 
    Document   : marriage1
    Created on : Sep 23, 2017, 2:34:32 PM
    Author     : student30
--%>

<%-- 
    Document   : user_registration
    Created on : Sep 11, 2017, 10:38:51 AM
    Author     : student30
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<!DOCTYPE html>
<%
  if(request.getParameter("submit")!=null)
         {
              
             String m_mdate=request.getParameter("m_mdate");
              String m_pom=request.getParameter("m_pom");
               String m_hpic=request.getParameter("m_hpic");
              String m_wpic=request.getParameter("m_wpic");
              String m_hname=request.getParameter("m_hname");
              String m_wname=request.getParameter("m_wname");
         String m_hnation=request.getParameter("m_hnation");
        String m_wnation=request.getParameter("m_wnation");
              String m_hage=request.getParameter("m_hage");    
          String m_wage=request.getParameter("m_wage");
          String m_hdob=request.getParameter("m_hdob");
          String m_wdob=request.getParameter("m_wdob");
          String m_hoccu=request.getParameter("m_hoccu");
          String m_woccu=request.getParameter("m_woccu");
          String m_haddress=request.getParameter("m_haddress");
          String m_waddress=request.getParameter("m_waddress");
          String m_hpremstat=request.getParameter("m_hpremstat");
          String m_wpremstat=request.getParameter("m_wpremstat");
          String m_hfname=request.getParameter("m_hfname");
          String m_wfname=request.getParameter("m_wfname");
          String m_hmname=request.getParameter("m_hmname");
          String m_wmname=request.getParameter("m_wmname");
          String m_hadhar=request.getParameter("m_hadhar");
          String m_wadhar=request.getParameter("m_wadhar");
          String m_hreligion=request.getParameter("m_hreligion");
          String m_wreligion=request.getParameter("m_wreligion");
         String m_witname1=request.getParameter("m_witname1");
         String m_witadd1=request.getParameter("m_witadd1");
         String m_witname2=request.getParameter("m_witname2");
         String m_witadd2=request.getParameter("m_witadd2");
         String m_proof=request.getParameter("m_proof");
         
         String str="insert into tbl_marriage(m_mdate,m_pom,m_hpic,m_wpic,m_hname,m_wname,m_hnation,m_wnation,m_hage,m_wage,m_hdob,m_wdob,m_hoccu,m_woccu,m_haddress,m_waddress,m_hpremstat,m_wpremstat,m_hfname,m_wfname,m_hmname,m_wmname,m_hadhar,m_wadhar,m_hreligion,m_wreligion,m_witname1,m_witadd1,m_witname2,m_witadd2,m_proof)values ('"+m_mdate+"','"+m_pom+"','"+m_hpic+"','"+m_wpic+"','"+m_hname+"','"+m_wname+"','"+m_hnation+"','"+m_wnation+"','"+m_hage+"','"+m_wage+"','"+m_hdob+"','"+m_wdob+"','"+m_hoccu+"','"+m_woccu+"','"+m_haddress+"','"+m_waddress+"','"+m_hpremstat+"','"+m_wpremstat+"','"+m_hfname+"','"+m_wfname+"','"+m_hmname+"','"+m_wmname+"','"+m_hadhar+"','"+m_wadhar+"','"+m_hreligion+"','"+m_wreligion+"','"+m_witname1+"','"+m_witadd1+"','"+m_witname2+"','"+m_witadd2+"','"+m_proof+"')";
                
         
         boolean b=obj.insert(str);
         if(b==true)
            
             out.print("success");
         else
             out.print(str);
         }
         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

<title> MARRIAGE form</title>

</head>
    <center>
<form>
   <body>
        <h1><font color="red"><u> MARRIAGE REGISTRATION FORM</u></font></h1>
            <table border="3">
    
<tr><td> Marriage date: </td><td><input type="date" id="m_mdate" name="m_mdate"></td></tr>

<tr><td>Place of marriage: </td><td><input type="text" id="m_pom" name="m_pom"></td></tr>




 <tr><th></th><th>husband</th><th>wife</th></tr>
<tr><td> Name: </td><td><input type="text" id="m_hname" name="m_hname"></td><td><input type="text" id="m_wname" name="m_wname"></td></tr>
<tr><td> Nation: </td><td><input type="text" id="m_hnation" name="m_hnation"></td><td><input type="text" id="m_wnation" name="m_wnation"></td></tr>
<tr><td> Age: </td><td><input type="text" id="m_hage" name="m_hage"></td><td><input type="text" id="m_wage" name="m_wage"></td></tr>
<tr><td>DOB: </td><td><input type="date" id="m_hdob" name="m_hdob"></td> <td> <input type="date" id="m_wdob" name="m_wdob"></td></tr>
<tr><td>Occupation: </td><td><input type="text" id="m_hoccu" name="m_hoccu"></td> <td> <input type="text" id="m_woccu" name="m_woccu"></td></tr>
 <tr><td>Address:</td><td><textarea type="text"  id="m_haddress" name="m_haddress"></textarea></td> <td><textarea type="text"  id="m_waddress" name="m_waddress"></textarea></td></tr>
 <tr><td> Marital status :</td><td>
         <input type="radio" name="m_hpremstat" id="m_hpremstat">divorced
                <input type="radio" name="m_hpremstat" id="m_hpremstat">widower 
             <input type="radio" name="m_hpremstat" id="m_hpremstat">Single</td>
                 <td>  <input type="radio" name="m_wpremstat" id="m_wpremstat">divorced
                <input type="radio" name="m_wpremstat" id="m_wpremstat">widower   
          <input type="radio" name="m_wpremstat" id="m_wpremstat">Single</td>
     </td></tr>
<tr><td>Father name: </td><td><input type="text" id="m_hfname" name="m_hfname"></td><td><input type="text" id="m_wfname" name="m_wfname"></td></tr>
<tr><td>Mother name: </td><td><input type="text" id="m_hmname" name="m_hmname"></td><td><input type="text" id="m_wmnname" name="m_wmname"></td></tr>
 <tr><td>Adhar: </td><td><input type="text" id="m_hadhar" name="m_hadhar"></td><td><input type="text" id="m_wadhar" name="m_wadhar"></td></tr>
 <tr><td>Religion: </td><td><input type="text" id="m_hreligion" name="m_hreligion"></td><td><input type="text" id="m_wreligion" name="m_wreligion"></td></tr>
  
<tr><td>Witness name1: </td><td><input type="text" id="m_witname1" name="m_witname1"></td></tr>
<tr><td> Witness Address1:</td><td><textarea type="text"  id="m_witadd1" name="m_witadd1"></textarea></td>
<tr><td>Witness name2: </td><td><input type="text" id="m_witname2" name="m_witname2"></td></tr>
<tr><td> Witness Address2::</td><td><textarea type="text"  id="m_witadd2" name="m_witadd2"></textarea></td>




<tr><td>Proof:</td><td><input type="file" id="proof" name="proof"></td></tr>







  

<tr><td><input type="submit"  name="submit" value="submit" onclick="return fname()"></td><td>
<input type="submit"  name="cancel" value="cancel"></td></tr>
</table>
</body>
</form>
</center>
</html>


