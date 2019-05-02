<%-- 
    Document   : display
    Created on : 1 Apr, 2019, 7:09:34 PM
    Author     : anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
       	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">   
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <title>Submission</title>
    </head>
    <body>
        
        <%
            String firstname = request.getParameter("first");
            String usn = request.getParameter("usn");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("DOB");
            int mark1 = Integer.parseInt(request.getParameter("mark1"));
            int mark2 = Integer.parseInt(request.getParameter("mark3"));
            int mark3 = Integer.parseInt(request.getParameter("mark2"));
            
   String DB_URL ="jdbc:mysql://localhost:3306/form";
   String DB_DRV ="com.mysql.jdbc.Driver";
   String DB_USER = "anirudhkannan";
   String DB_PASSWD = "anirudhkannan";
          Class.forName(DB_DRV);  
      Connection connection = null;
      Statement statement = null;
      ResultSet resultSet = null;

      try{
         connection=DriverManager.getConnection
            (DB_URL,DB_USER,DB_PASSWD);
         statement=connection.createStatement();
         
         String query = "insert into form values(\""+firstname+"\",\""+usn+"\",\""+email+"\",\""+gender+"\",\""+dob+"\","+mark1+","+mark2+","+mark3+");";
         
         int a = statement.executeUpdate(query);
         

      }catch(Exception ex){
          System.out.print(ex);
      }
         try {
            
            statement.close();
            connection.close();
         } catch (Exception e) {
         }



            %>
            
            
            <div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            
                            
                             <span class="login100-form-title p-b-49">
			Submitted Successfully
					</span>
                            
                            
                            
                        
            <br>
             <a href="index.jsp">Go Back</a> 
             
                    </div>
                </div>
            </div>
        
    </body>
</html>
