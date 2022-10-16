<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link
            href="https://fonts.googleapis.com/css?family=Inria Serif"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="CSS/Custom.css">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
            crossorigin="anonymous"
            />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
    </head>
    <body>
       
      
            <div class ="position-absolute" style = "width: 100%; height: 100%">
                <div class ="position-absolute p-4 custom-center shadow" style = "height: 90%; width: 80%; border: 1px solid">
                    <div class ="h1 text-center" style = "font-family: Inria Serif "> Manage Appointment </div>
                    <div class ="h3 mt-3 text-center" style = "font-family: Montserrat">
                        Welcome back, ${sessionScope.user.firstName} ${sessionScope.user.lastName}
                    </div>
                 
                    <div style = "overflow: auto; width: 100%; height: 400px; border: 1px solid" class ="mt-5 position-relative custom-horizontal-center" >
                 
                        <table class="table table-hover">
                            
                            <thead>
                                <tr>
                                    <th scope="col">Appointment ID</th>
                                    <th scope="col">Customer Information</th>
                                    <th scope="col">Customer Status </th>
                                    <th scope="col">Contact Date & Time</th>
                                    <th scope="col">Approve</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items = "${sessionScope.registers}" var = "register"> 
                     
                                    <tr>
                                        <th scope="row">${register.registerID}</th>
                                        <td> <span style = "font-style: italic; font-weight: bold"> Name </span> <br>
                                          ${register.guestLastName}${register.phoneNumber} 
                                            <br>
                                            <span style = "font-style: italic; font-weight: bold"> Phone Number </span> <br> ${register.skinType} 
                                        </td>
                                        <td>
                                            <span style = "font-style: italic; font-weight: bold"> Skin Type </span> <br>  ${register.guestFirstName}
                                            <br>
                                            <span style = "font-style: italic; font-weight: bold" > 
                                                Skin Problem(s): </span> <br>
                                                <c:if test = "${empty register.skinProblems}"> Empty</c:if>
                                           <c:forEach items  = "${register.skinProblems}" var = "prob">
                                            
                                               ${prob}  <br>
                                          
                                           </c:forEach>
                                        </td>
                                        <td>
                                            <span style = "font-style: italic; font-weight: bold">  Contact Time Zone </span>  <br> ${register.timeZone}  
                                         <br>
                                         <span style = "font-style: italic; font-weight: bold">  Contact Date </span> <br> ${register.contactDate}
                                        </td>
                             
                                         <td class = "position-relative">
                                           <form action = "ApproveRegisterServlet"> 
                                             <input type ="hidden" name ="registerID" value ="${register.registerID}">
                                             <input type ="submit" class ="btn btn-light border-dark position-absolute custom-center" name = "action" value = "Approve">
                                            </form>
                                         </td>
                                         

                             </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
 
    </body>
</html>
