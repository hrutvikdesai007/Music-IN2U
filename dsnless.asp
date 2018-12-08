<%
dim conn,rs,uname,pass
set conn=server.createobject("ADODB.Connection")
conn.provider="Microsoft.Jet.OLEDB.4.0"
conn.open "C:\inetpub\wwwroot\wtwebsite\logindb.mdb"
set rs=server.createobject("ADODB.RecordSet")
rs.open "login",conn,0,3,2
uname=request.form("u")
pass=request.form("p")
do while not rs.EOF
if uname=rs("username") and pass=rs("password") then
	Session("user")=uname
	Session.Timeout=120
	response.redirect("home.asp")
else
	rs.movenext
end if
loop
conn.close
set conn=Nothing
response.write("Login Failed")
%>