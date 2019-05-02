<%-- 
    Document   : adminpage
    Created on : 5 Apr, 2019, 7:18:50 PM
    Author     : anirudh
--%>


<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 {
  width: 100%;    
  background-color: #f1f1c1;
}
 tr:hover {background-color:#66ccff;}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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
    </head>
    <body>
        <%! int mark1;
        int mark2;
        int mark3;
        String name1;
        String name2;
        String name3;
        %>
        
        
        <%  float max1=0;
            int pass=0;
            int fail=0;
            PrintWriter w = new PrintWriter( out );
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
            
            /**************Average of Each Test***********/
            out.println("<div class=\"limiter\"><div class=\"container-login100\" style=\"background-image: url('images/bg-01.jpg');\"><div class=\"wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54\"><span class=\"login100-form-title p-b-49\">Average of each test</span>");
            resultSet=statement.executeQuery
               ("SELECT AVG(mark1), AVG(mark2), AVG(mark3) FROM form");
            
                while(resultSet.next()){
            
              w.printf("<p>Test 1 :  %.2f<br>Test 2 :  %.2f<br>Test 3 :  %.2f<br></p>",
               resultSet.getFloat(1), resultSet.getFloat(2), resultSet.getFloat(3));
            }
            %>
            <table width="59%" border="1">
    <thead>
    <tr>
        <td>Name</td>
        <td>USN</td>
        <td>Percenage</td>
    </tr>
    </thead>
    <tbody>
                  
            
            <%
           
            /**************Percentage of Each Student***********/
           
            //=======================================================topper overall ===========================//
              out.println("<span class=\"login100-form-title p-b-49\"><br>Overall Topper</span>");
            resultSet=statement.executeQuery("select max((mark1 + mark2 + mark3)/3) from form");
            while(resultSet.next()){
                max1 = resultSet.getFloat(1);
            }
            resultSet=statement.executeQuery
               ("select name, usn from form where (mark1 + mark2 + mark3)/3 = " + max1);
            while(resultSet.next()){
               w.printf("<p>%s (USN:  %s ) with percentage %.2f <br></p>",
               resultSet.getString(1), resultSet.getString(2), max1);
            }
            
            
            /**************Topper of test 1***********/
             out.println("<span class=\"login100-form-title p-b-49\"><br>Topper of test 1</span>");
            resultSet=statement.executeQuery("select max(mark1) from form");
            float max = 0;
            while(resultSet.next()){
                max = resultSet.getFloat(1);
            }
            resultSet=statement.executeQuery
               ("select name, usn from form where mark1 = " + max);
            while(resultSet.next()){
               w.printf("<p>%s (USN:  %s ) with percentage %.2f %% <br></p>",
               resultSet.getString(1), resultSet.getString(2), max);
            }
            
            /**********Percentage of Each Student****Topper of test 2***********/
             out.println("<span class=\"login100-form-title p-b-49\"><br>Topper of test 2</span>");
            resultSet=statement.executeQuery("select max(mark2) from form");
            while(resultSet.next()){
                max = resultSet.getFloat(1);
            }
            resultSet=statement.executeQuery
               ("select name, usn from form where mark2 = " + max);
            while(resultSet.next()){
                w.printf("<p>%s (USN:  %s ) with percentage %.2f %% <br></p>",
               resultSet.getString(1), resultSet.getString(2), max);
            }
            
            /**************Topper of test 3***********/
             out.println("<span class=\"login100-form-title p-b-49\"><br>Topper of test 3</span>");
            resultSet=statement.executeQuery("select max(mark3) from form");
            while(resultSet.next()){
                max = resultSet.getFloat(1);
            }
            resultSet=statement.executeQuery
               ("select name, usn from form where mark3 = " + max);
            while(resultSet.next()){
                w.printf("<p>%s (USN:  %s ) with percentage %.2f %% <br></p>",
               resultSet.getString(1), resultSet.getString(2), max);
            }
           
          
            /**************Passed students***********/
            out.println("<span class=\"login100-form-title p-b-49\"><br>Passed students</span>");
            
            resultSet=statement.executeQuery
               ("select name, usn from form where mark1 > 40 and mark2 > 40 and mark3 > 40");
            while(resultSet.next()){
               w.printf("<p>%s (USN : %s )<br></p>",
               resultSet.getString(1), resultSet.getString(2));
               pass++;
            }
            
            
            /**************Failed students***********/
              out.println("<span class=\"login100-form-title p-b-49\"><br>Failed students</span>");
            resultSet=statement.executeQuery
               ("select name, usn from form where mark1 < 40 or mark2 < 40 or mark3 < 40");
            while(resultSet.next()){
               w.printf("<p>%s (USN : %s )<br></p>",
               resultSet.getString(1), resultSet.getString(2));
               fail++;
            }
             
            
            
             
            
          
            out.println("<script src=\"canvasjs-2.3.1/canvasjs.min.js\"></script><script type=\"text/javascript\">window.onload = function () {var chart = new CanvasJS.Chart(\"chartContainer\", {title:{text: \"Pass Vs Fail\" },data: [{type: \"doughnut\",dataPoints: [{ label: \"pass\",  y:"+ (pass*100/(pass+fail)) + " },{ label: \"fail\", y: "+ (fail*100/(pass+fail)) +"  }]}]});chart.render();}</script>");
            out.println("<div id=\"chartContainer\" style=\"height: 300px; width: 100%;\"></div>");
            
           
            
              /**************Performance by gender***********/
            out.println("<span class=\"login100-form-title p-b-49\"><br>Mean performance (by gender)</span>");

            resultSet=statement.executeQuery
               ("SELECT gender, avg((mark1 + mark2 + mark3) / 3) FROM form group by gender");
            while(resultSet.next()){
               w.printf("<p>%s - %.2f%%<br></p>",
               resultSet.getString(1), resultSet.getFloat(2));
            }
            
             out.println("<span class=\"login100-form-title p-b-49\"><br>Percentage of Each Student</span>");
            resultSet=statement.executeQuery
               ("select name, usn, (mark1 + mark2 + mark3) / 3 from form");
            
            while(resultSet.next()){
               w.printf("<tr>" +"<td>%s</td>" +"<td>%s</td>" +  "<td>%s</td>" +  "</tr>",  resultSet.getString(1) ,resultSet.getString(2), resultSet.getFloat(3));
            }
            
            
           /* 
            out.println("<script src=\"canvasjs-2.3.1/canvasjs.min.js\"></script><script type=\"text/javascript\">window.onload = function () {var chart = new CanvasJS.Chart(\"chartContainer\", {title:{text: \"Pass Vs Fail\" },data: [{type: \"doughnut\",startAngle: 240,yValueFormatString: \"##0.00'%'\",indexLabel: \"{label} {y}\",dataPoints: [{ label: \"pass\",  y:"+ pass + ",color:\"RoyalBlue\" },{ label: \"fail\", y: "+ fail +" , color:\"LightSeaGreen\" }]}]});chart.render();}</script>\"");
            out.println("<div id=\"chartContainer\" height: 300px; width: 100%;\"></div>");
*/
            
            w.printf("</div></div></div>");
      }catch(SQLException ex){
      }finally{
         try {
            resultSet.close();
            statement.close();
            connection.close();
         } catch (SQLException ex) {
         }
      }
            %>
            
    </body>
</html>
