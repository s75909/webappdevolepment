<%-- 
    Document   : insuranceQuotation
    Created on : Apr 21, 2026, 4:08:34 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css.css">
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        
        <fieldset>
            <form action="processInsuranceQuo.jsp" method="post">
                
                <label>IC No*</label><br>
                <input type="text" name="icno" placeholder="E.g. 821210-05-3478" required> 
                <br>
                
                <label>Name*</label>
                <input type="name" name="name" placeholder="Enter Name" required>
                <br>
                
                <label>Market Price*</label>
                <input type="number" name="price" placeholder="price" required>
                <br>
                
                <label>Coverage Type</label>
                <select name="coverage">
                    <option value="comprehensive">Comprehensive</option>
                    <option value="Third Party">Third Party</option>
                </select>
                
                <label>No Claim Discount(NCD)</label>
                <input type="number" name="ncd" placeholder="0%" required>
                
                <button type="submit" name="submit">Submit</button>
                <button type="reset" name="Cancel">Cancel</button>
                </form>
        </fieldset>
    </body>
</html>
