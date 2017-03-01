<%-- 
    Document   : index
    Created on : Feb 28, 2017, 11:11:00 PM
    Author     : ajpowell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Al Powell</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours worked:</td>
                        <td><input type="text" name="hours" value="" size="50"></td>
                    </tr>
                     <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50"></td>
                    </tr>
                     <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="deduct" value="" size="50"></td>
                    </tr>
                     <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="deduct2" value="" size="50"></td>
                    </tr>
                </tbody>
                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
            
        </form>
        
    </body>
</html>