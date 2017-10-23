<%-- 
    Document   : marriage2
    Created on : Sep 23, 2017, 2:41:38 PM
    Author     : student30
--%>

<%@page import="java.sql.ResultSet"%>
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
        <script>
            
            function validate()
            {
                var status="true";
                var placename=/^[a-zA-z]{4,20}$/;
                var name=document.getElementById('m_pom').value;             
                if((name.match(placename)))
                {
                    document.getElementById("valplace").innerHTML="";
                }
                else
                { alert(name);
                    document.getElementById("valplace").innerHTML="Invalid PlaceName";
                    status="false";
                }
                
                var husname=/^[a-zA-z]{4,20}$/;
                var hname=document.getElementById('m_hname').value;
               
                if((hname.match(husname)))
                {
                    document.getElementById("valhname").innerHTML="";
                }else
                { alert(hname);
                    document.getElementById("valhname").innerHTML="Invalid HusbandName";
                    status="false";
                }
                
                var wifename=/^[a-zA-z]{4,20}$/;
                var wname=document.getElementById('m_wname').value;
               
                if((wname.match(wifename)))
                {
                    document.getElementById("valwname").innerHTML="";
                }else
                { alert(wname);
                    document.getElementById("valwname").innerHTML="Invalid WifeName";
                    status="false";
                }
                
                var husnation=/^[a-zA-z]{2,20}$/;
                var hnation=document.getElementById('m_hnation').value;
               
                if((hnation.match(husnation)))
                {
                    document.getElementById("valhnation").innerHTML="";
                }else
                { alert(hnation);
                    document.getElementById("valhnation").innerHTML="Invalid Nation";
                    status="false";
                }
                
                var wifenation=/^[a-zA-z]{4,20}$/;
                var wnation=document.getElementById('m_wnation').value;
               
                if((wnation.match(wifenation)))
                {
                    document.getElementById("valwnation").innerHTML="";
                }else
                { alert(wnation);
                    document.getElementById("valwnation").innerHTML="Invalid Nation";
                    status="false";
                }
                
                var husage=/^[0-9]{2}$/;
                var hage=document.getElementById('m_hage').value;
               
                if((hage.match(husage)))
                {
                    document.getElementById("valhage").innerHTML="";
                }else
                { alert(hage);
                    document.getElementById("valhage").innerHTML="Invalid Age";
                    status="false";
                }
                
                var wifeage=/^[0-9]{2}$/;
                var wage=document.getElementById('m_wage').value;
               
                if((wage.match(wifeage)))
                {
                    document.getElementById("valwage").innerHTML="";
                }else
                { alert(wage);
                    document.getElementById("valwage").innerHTML="Invalid Age";
                    status="false";
                }
                
               
                var husoccu=/^[a-zA-z]{2,20}$/;
                var hoccu=document.getElementById('m_hoccu').value;
               
                if((hoccu.match(husoccu)))
                {
                    document.getElementById("valhoccu").innerHTML="";
                }else
                { alert(hoccu);
                    document.getElementById("valhoccu").innerHTML="Invalid Occupation";
                    status="false";
                }
                
                var wifeoccu=/^[a-zA-z]{2,20}$/;
                var woccu=document.getElementById('m_woccu').value;
               
                if((woccu.match(wifeoccu)))
                {
                    document.getElementById("valwoccu").innerHTML="";
                }else
                { alert(woccu);
                    document.getElementById("valwoccu").innerHTML="Invalid Occupation";
                    status="false";
                }
         
                var husaddress=/^[a-zA-z 0-9]{4,20}$/;
                var haddress=document.getElementById('m_haddress').value;
               
                if((haddress.match(husaddress)))
                {
                    document.getElementById("valhaddress").innerHTML="";
                }else
                { alert(haddress);
                    document.getElementById("valhaddress").innerHTML="Invalid Address";
                    status="false";
                }
                
                var wifeaddress=/^[a-zA-z 0-9]{4,20}$/;
                var waddress=document.getElementById('m_waddress').value;
               
                if((waddress.match(wifeaddress)))
                {
                    document.getElementById("valwaddress").innerHTML="";
                }else
                { alert(waddress);
                    document.getElementById("valwaddress").innerHTML="Invalid Address";
                    status="false";
                }
                
               
                var husfname=/^[a-zA-z]{4,20}$/;
                var hfname=document.getElementById('m_hfname').value;
               
                if((hfname.match(husfname)))
                {
                    document.getElementById("valhfname").innerHTML="";
                }else
                { alert(hfname);
                    document.getElementById("valhfname").innerHTML="Invalid FatherName";
                    status="false";
                }
                
                var wifefname=/^[a-zA-z]{4,20}$/;
                var wfname=document.getElementById('m_wfname').value;
               
                if((wfname.match(wifefname)))
                {
                    document.getElementById("valwfname").innerHTML="";
                }else
                { alert(wfname);
                    document.getElementById("valwfname").innerHTML="Invalid FatherName";
                    status="false";
                }
                
                var husmname=/^[a-zA-z]{4,20}$/;
                var hmname=document.getElementById('m_hmname').value;
               
                if((hmname.match(husmname)))
                {
                    document.getElementById("valhmname").innerHTML="";
                }else
                { alert(hmname);
                    document.getElementById("valhmname").innerHTML="Invalid MotherName";
                    status="false";
                }
                
                var wifemname=/^[a-zA-z]{4,20}$/;
                var wmname=document.getElementById('m_wmname').value;
               
                if((wmname.match(wifemname)))
                {
                    document.getElementById("valwmname").innerHTML="";
                }else
                { alert(wmname);
                    document.getElementById("valwmname").innerHTML="Invalid MotherName";
                    status="false";
                }
                
                var husaadhar=/^[0-9]{12}$/;
                var haadhar=document.getElementById('m_hadhar').value;
               
                if((haadhar.match(husaadhar)))
                {
                    document.getElementById("valhadhar").innerHTML="";
                }else
                { alert(haadhar);
                    document.getElementById("valhadhar").innerHTML="Invalid Aadhar Number";
                    status="false";
                }
                
                var wifeaadhar=/^[0-9]{12}$/;
                var waadhar=document.getElementById('m_wadhar').value;
               
                if((waadhar.match(wifeaadhar)))
                {
                    document.getElementById("valwadhar").innerHTML="";
                }else
                { alert(waadhar);
                    document.getElementById("valwadhar").innerHTML="Invalid Aadhar Number";
                    status="false";
                }
                
                var husreligion=/^[a-zA-z]{4,20}$/;
                var hreligion=document.getElementById('m_hreligion').value;
               
                if((hreligion.match(husreligion)))
                {
                    document.getElementById("valhrel").innerHTML="";
                }else
                { alert(hreligion);
                    document.getElementById("valhrel").innerHTML="Invalid Religion";
                    status="false";
                }
                
                var wifereligion=/^[a-zA-z]{4,20}$/;
                var wreligion=document.getElementById('m_wreligion').value;
               
                if((wreligion.match(wifereligion)))
                {
                    document.getElementById("valwrel").innerHTML="";
                }else
                { alert(wreligion);
                    document.getElementById("valwrel").innerHTML="Invalid Religion";
                    status="false";
                }
                
                var witname1=/^[a-zA-z]{4,20}$/;
                var wname1=document.getElementById('m_witname1').value;
               
                if((wname1.match(witname1)))
                {
                    document.getElementById("valwit1").innerHTML="";
                }else
                { alert(wname1);
                    document.getElementById("valwit1").innerHTML="Invalid Name";
                    status="false";
                }
                
                var wit1address=/^[a-zA-z 0-9]{4,20}$/;
                var w1address=document.getElementById('m_witadd1').value;
                if((w1address.match(wit1address)))
                {
                    document.getElementById("valwit1add").innerHTML="";
                }else
                { alert(w1address);
                    document.getElementById("valwit1add").innerHTML="Invalid Address";
                    status="false";
                }
                
                
                var witname2=/^[a-zA-z]{4,20}$/;
                var wname2=document.getElementById('m_witname2').value;
               
                if((wname2.match(witname2)))
                {
                    document.getElementById("valwit2").innerHTML="";
                }else
                { alert(wname2);
                    document.getElementById("valwit2").innerHTML="Invalid Name";
                    status="false";
                }
                
                var wit2address=/^[a-zA-z 0-9]{4,20}$/;
                var w2address=document.getElementById('m_witadd2').value;
                if((w2address.match(wit2address)))
                {
                    document.getElementById("valwit2add").innerHTML="";
                }else
                { alert(w2address);
                    document.getElementById("valwit2add").innerHTML="Invalid Address";
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

<title> MARRIAGE form</title>

</head>
   
   <body>
        <center>
<form>
        <h1><font color="red"><u> MARRIAGE REGISTRATION FORM</u></font></h1>
            <table border="3">
    
<tr><td> Marriage date: </td><td><input type="date" id="m_mdate" name="m_mdate"></td></tr>

<tr><td>Place of marriage: </td><td><input type="text" id="m_pom" name="m_pom"><div style="color: red" id="valplace"></div></td></tr>




 <tr><th></th><th>husband</th><th>wife</th></tr>

 
 <tr><td> Name: </td><td><input type="text" id="m_hname" name="m_hname"><div style="color: red" id="valhname"></div></td>
    <td><input type="text" id="m_wname" name="m_wname"><div style="color: red" id="valwname"></div></td></tr>

<tr><td> Nation: </td><td><input type="text" id="m_hnation" name="m_hnation"><div style="color: red" id="valhnation"></div></td>
    <td><input type="text" id="m_wnation" name="m_wnation"><div style="color: red" id="valwnation"></div></td></tr>

<tr><td> Age: </td><td><input type="text" id="m_hage" name="m_hage"><div style="color: red" id="valhage"></div></td>
    <td><input type="text" id="m_wage" name="m_wage"><div style="color: red" id="valwage"></div></td></tr>

<tr><td>DOB: </td><td><input type="date" id="m_hdob" name="m_hdob"></td>
    <td> <input type="date" id="m_wdob" name="m_wdob"></td></tr>

<tr><td>Occupation: </td><td><input type="text" id="m_hoccu" name="m_hoccu"><div style="color: red" id="valhoccu"></div></td> 
    <td> <input type="text" id="m_woccu" name="m_woccu"><div style="color: red" id="valwoccu"></div> </td></tr>
 
<tr><td>Address:</td><td><textarea type="text"  id="m_haddress" name="m_haddress"></textarea><div style="color: red" id="valhaddress"></div></td>
    <td><textarea type="text"  id="m_waddress" name="m_waddress"></textarea><div style="color: red" id="valwaddress"></div></td></tr>
 
<tr><td> Marital status :</td><td>
         <input type="radio" name="m_hpremstat" id="m_hpremstat" value="Divorced">Divorced
                <input type="radio" name="m_hpremstat" id="m_hpremstat"value="Widower">Widower 
             <input type="radio" name="m_hpremstat" id="m_hpremstat"value="Single">Single</td>
                 <td>  <input type="radio" name="m_wpremstat" id="m_wpremstat"value="Divorced">Divorced
                <input type="radio" name="m_wpremstat" id="m_wpremstat"value="Widower">Widower   
          <input type="radio" name="m_wpremstat" id="m_wpremstat"value="Single">Single</td>
     </td></tr>

<tr><td>Father name: </td><td><input type="text" id="m_hfname" name="m_hfname"><div style="color: red" id="valhfname"></div></td>
    <td><input type="text" id="m_wfname" name="m_wfname"><div style="color: red" id="valwfname"></div></td></tr>

<tr><td>Mother name: </td><td><input type="text" id="m_hmname" name="m_hmname"><div style="color: red" id="valhmname"></div></td>
    <td><input type="text" id="m_wmname" name="m_wmname"><div style="color: red" id="valwmname"></div></td></tr>

<tr><td>Adhar: </td><td><input type="text" id="m_hadhar" name="m_hadhar"><div style="color: red" id="valhadhar"></div></td>
    <td><input type="text" id="m_wadhar" name="m_wadhar"><div style="color: red" id="valwadhar"></div></td></tr>
<tr>
<td>Religion:</td><td><select name="m_hreligion" id="m_hreligion">
                       <option value="religion">--select--</option>
                      
               <%
               String sel="select * from tbl_religion";
               ResultSet rs=obj.select(sel);
               while(rs.next())
                {
                  %>
                  <option value="<%=rs.getString("religion_id")%>"><%=rs.getString("religion_name")%>
                        </option>
                        <%
               }
                   %>
                   
                   </select>
               </td>
               <td><select name="m_wreligion" id="m_wreligion">
                       <option value="religion">--select--</option>
                      
               <%
               String sel1="select * from tbl_religion";
               ResultSet rs1=obj.select(sel1);
               while(rs1.next())
                {
                  %>
                  <option value="<%=rs1.getString("religion_id")%>"><%=rs1.getString("religion_name")%>
                        </option>
                        <%
               }
                   %>
                   
                   </select>
               </td>
</tr>

<tr><td>Witness name1: </td><td><input type="text" id="m_witname1" name="m_witname1"><div style="color: red" id="valwit1"></div></td>

<tr><td> Witness Address1:</td><td><textarea type="text"  id="m_witadd1" name="m_witadd1"></textarea><div style="color: red" id="valwit1add"></div></td>

<tr><td>Witness name2: </td><td><input type="text" id="m_witname2" name="m_witname2"><div style="color: red" id="valwit2"></div></td></tr>

<tr><td> Witness Address2::</td><td><textarea type="text"  id="m_witadd2" name="m_witadd2"></textarea><div style="color: red" id="valwit2add"></div></td>

<tr><td>Proof:</td><td><input type="file" id="proof" name="proof"></td></tr>
<tr><td><input type="submit"  name="submit" value="submit" onclick="return validate()"></td><td>
<input type="submit"  name="cancel" value="cancel"></td></tr>
</table>
</form>
</center>
</body>


</html>


