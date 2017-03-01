

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    <%
        
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        int hourlyPay = Integer.parseInt(request.getParameter("pay"));
        int pre = Integer.parseInt(request.getParameter("deduct"));
        int post = Integer.parseInt(request.getParameter("deduct2"));
        int overtime = 0;
        int overPay = 0;
        int grossPay = 0;
        int taxAmt = 0;
        int postAmt = 0;
        int netPay = 0;
        
        %>
    <body>
        <h1>Salary Info</h1>
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= overtime%></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overPay%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pre %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmt%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= post %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postAmt%></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay%></td>
                </tr>
            </tbody>
            
            
            
        </table>
        
        
    </body>
</html>
