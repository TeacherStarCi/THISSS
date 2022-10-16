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
        <form action = "SignInServlet"> 
            <div class ="position-absolute" style = "width: 100%; height: 100%">
                <div class ="position-absolute p-4 custom-center shadow" style = "height: 320px; width: 400px; border: 1px solid">
                    <div class ="h1 text-center" style = "font-family: Inria Serif "> Sign In </div>
                    <div style = "font-family: Montserrat">
                        Username
                    </div>
                    <input class ="form-control" type = "text" name = "username" value = "">
                    <div style = "font-family: Montserrat">
                        Password
                    </div>
                    <input class ="form-control" type = "password" name = "password" value = "">
                    <c:if test ="${requestScope.incorrectAuthInputFlag}"> 
                     <div style ="color: red; font-family: Montserrat"> Incorrect Username or Password. </div>
                    </c:if>
                   
                    
                    <button class ="position-relative btn btn-light border-dark mt-3 custom-horizontal-center"> 
                        <div  style = "font-family: Inria Serif ">  <div style ="font-family: Montserrat" class = "h3"> Sign In </div></div>
                    </button>
                </div>
            </div>
        </form>
    </body>
</html>
