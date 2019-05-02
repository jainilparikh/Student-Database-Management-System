<%-- 
    Document   : login
    Created on : 5 Apr, 2019, 7:11:00 PM
    Author     : anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
    
<%! String userdbName;

String userdbPsw;

String dbUsertype;

%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/form";

String user = "anirudhkannan";

String dbpsw = "anirudhkannan";







String name = request.getParameter("username");

String password = request.getParameter("password");

String permission = request.getParameter("permission"); 

String sql = "select * from login where username = \""+name+"\"and password = \""+password+"\" and permission = \""+permission+"\"";

if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("username");

userdbPsw = rs.getString("password");

dbUsertype = rs.getString("permission");

if(name.equals(userdbName) && password.equals(userdbPsw) && permission.equals(dbUsertype))

{

session.setAttribute("username",userdbName);

session.setAttribute("permission", dbUsertype); 
if(permission.equals("student"))
response.sendRedirect("studentregis.jsp"); 

else
    response.sendRedirect("adminpage.jsp");


} 

}

else

response.sendRedirect("error.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/index.jsp").include(request, 
response);

}

%>

</body>

</html>