

<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
        <link rel="stylesheet" href="\\home.iowa.uiowa.edu\ajpowell\NetBeansProjects\Homework\styles2.css">
    </head>
    <%
        
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        int hourlyPay = Integer.parseInt(request.getParameter("pay"));
        int pre = Integer.parseInt(request.getParameter("deduct"));
        int post = Integer.parseInt(request.getParameter("deduct2"));
        double overRate = (double)hourlyPay * 1.5;
        double grossPay;
        double overtime = hoursWorked - 40;
        
        double overPay = (double) overtime * overRate;
        double taxAmt;
        
        
    
        
        
        
        
        
        if (hoursWorked > 40)
                {
                   
                   
                   
                   
                  grossPay = (overtime * overRate) + (40 * (double)hourlyPay);
                   
                }
        else
                {
                   grossPay = hoursWorked * hourlyPay;
                }
        

       double taxPay = grossPay - pre;
       
        
        if (grossPay < 500)
         {
           taxAmt = taxPay * .18;
            
         }
        else
         {
            
           taxAmt = taxPay * .22;
         }
        
        int postAmt = (int)taxPay - (int)taxAmt;
        int netPay = (int)postAmt - post;
        %>
    <body>
        <h1>Salary Info</h1>
        <hr>
        
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
                    <td><%= overtime %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overPay %></td>
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
