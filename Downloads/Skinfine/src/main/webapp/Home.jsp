<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Custom.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Skinfine</title>
        <link href='https://fonts.googleapis.com/css?family=Inria Serif' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

    </head>

    <body>
        <div class = "container-fluid p-0 m-0 position-relative">

            <div class = "row position-relative m-0" style = "border-bottom: 2px solid; height: 100px; width: 100%"> 
                <div class ="col-3" style = "background-color: #FCF9F1">     
                    <div class ="row" style = "height: 100%">
                        <div class ="col-6 h5 position-relative " style = "font-family: 'Montserrat'" >
                            <div class = "position-relative custom-center d-inline-block" style = "top: 60%"> 
                                ABOUT US
                            </div>
                        </div>
                        <div class ="col-6 h5 position-relative " style = "font-family: 'Montserrat'">
                            <div class = "position-relative custom-center d-inline-block"  style = "top: 60%"> 
                                BOOKING
                            </div>
                        </div>
                    </div>
                </div>
                <div class ="col-6 position-relative" style = "background: #F7ECE9; border-left: 2px solid; border-right: 2px solid">
                    <div class ="h1 d-inline-block position-relative custom-center" style = "font-weight: bolder; font-family: 'Inria Serif'">
                        Skinfine
                    </div>
                </div>
                <div class ="col-3" style = "background-color: #FCF9F1">
                    <div class ="row" style = "height: 100%">
                        <div class ="col-6 h5 position-relative " style = "font-family: 'Montserrat'" >
                            <div class = "position-relative custom-center d-inline-block" style = "top: 60%"> 
                                CONTACT US
                            </div>
                        </div>
                        <div class ="col-6 h5 position-relative " style = "font-family: 'Montserrat'">
                            <div class = "position-relative custom-center d-inline-block"  style = "top: 60%"> 
                                PROFILE
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class = "row position-relative m-0" style = "width: 100%"> 
                <div class ="col-3 position-relative" style = "background-color: #F7ECE9" >     
                    <div class ="position-absolute h2" style = "font-style: italic; top: 100px; right: 20% ;text-align: right; font-family: 'Inria Serif'">
                        Your skin, <br> our care
                    </div>
                </div>
                <div class ="col-6 position-relative p-0" style = "background: #FCF9F1; border-left: 2px solid; border-right: 2px solid">
                    <img src ="Image/Fig1.png" style = "width: 100%">
                </div>  
                <div class ="col-3 position-relative" style = "background-color: #F7ECE9">
                    <div class ="position-absolute h3" style = "font-style: italic; top: 650px; right: 15% ;text-align: right; font-family: 'Inria Serif'">
                        Because Healthy Skin, <br> is Beautiful Skin
                    </div>
                    <div class = "position-absolute shadow" style = "background: #FCF9F1 ;width: 275px; height: 100px; top: 750px; right: 15%">
                        <div class ="position-absolute h4 custom-center custom-no-break" style = "font-family: 'Montserrat'">
                            Book Your Treatment
                        </div>
                    </div>
                </div>

            </div>

            <div class = "position-relative p-0 m-0" style = "width: 100%; height: 900px; background: #F7ECE9"> 
                <div class = "position-relative p-0 m-0" style ="height: 850px; background: #FCF9F1;"> 
                    <div class ="row position-relative p-0 m-0"> 
                        <div class ="col-6 position-relative">  
                            <img class ="position-absolute" src ="Image/Fig2.png" style = "width: 70%; right: 5%; top: 200px">
                        </div> 
                        <div class ="col-6 position-relative">  
                            <div class ="position-absolute" style = " top: 300px; left: 15%; font-family: 'Inria Serif'">
                                <span class = "h1" style = "font-style: italic;">  Skinfine... </span> <br>
                                <span class = "d-inline-block mt-2" style = "width: 350px; text-align: justify">
                                    Platform to link users and consultants. Customers can find out their skin problem and they will receive the most appropriate advices and treatments. From there, they will find the key of their skin.
                                </span> <br>
                                <a href = "#" > 
                                    <span class ="d-inline-block mt-2" style = "color: #000; font-family: 'Montserrat'">
                                        About Us  
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class ="position-relative" style ="width:100%;height: 100px; background: #F7ECE9;"> 
            </div>
        </div>

        <div class = "position-relative m-0 p-0" style = "width: 100%;height: 250px;background: #F7ECE9">   
            <div class ="text-center" style = "font-weight: bold;font-family: 'Inria Serif'; font-size: 4rem" > Advertisement </div>
        </div>   



        <div class = "position-relative m-0 p-0" style = "width: 100%;height: 900px;background: #F7ECE9">   
            <div class ="row position-relative" style = "height: 100%">
                <div class ="col-6 position-relative p-0">
                    <div style ="height: 600px; width: 70%; top: 150px; background: #FCF9F1" class = "p-5 float-end position-relative">
                        <div class ="h2" style = " font-family: 'Inria Serif' ">${applicationScope.ads.get(0).cosmeticName} </div> 
                        <div class ="h5" style = " font-family: 'Inria Serif' "> Introduced by ${applicationScope.ads.get(0).advertiserName}</div> 
  <div class ="h5 mt-5" style = " font-family: 'Montserrat' "> Brand: ${applicationScope.ads.get(0).brandName}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Category: ${applicationScope.ads.get(0).category}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Skin Type: ${applicationScope.ads.get(0).skinType}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Usage: ${applicationScope.ads.get(0).usage}</div> 
  <div class ="h4 mt-5" style = " font-family: 'Montserrat' "> Price: $ ${applicationScope.ads.get(0).unitPrice} </div>
  
  <a href = "${applicationScope.ads.get(0).description}">
        <div class = "position-relative shadow" style = "background: #FCF9F1 ;width: 200px; height: 80px">
                        <div class ="position-absolute h4 custom-center custom-no-break" style = "font-family: 'Montserrat'">
                           More Info
                        </div>
                    </div>
  </a> 
  
                    </div>
                </div>
                <div class ="col-6 position-relative p-0">
                    <div style  ="height: 600px; width: 70%; top: -100px" class = "position-relative">
                        <img src ="${applicationScope.ads.get(0).photo}" class = "img-fluid">

                    </div>
                </div>
            </div>
        </div>   


        <div class = "position-relative m-0 p-0" style = "width: 100%;height: 900px;background: #F7ECE9">   
            <div class ="row position-relative" style = "height: 100%">
                <div class ="col-6 position-relative p-0">
                    <div style ="height: 600px; width: 70%; border:1px solid; top: 150px" class = "float-end position-relative">
                 <img src ="${applicationScope.ads.get(1).photo}" class = "img-fluid">
                    </div>
                </div>
                <div class ="col-6 position-relative p-0">
                  
                       <div style ="height: 600px; width: 70%; background: #FCF9F1" class = "p-5 position-relative">
                        <div class ="h2" style = " font-family: 'Inria Serif' ">${applicationScope.ads.get(1).cosmeticName} </div> 
                        <div class ="h5" style = " font-family: 'Inria Serif' "> Introduced by ${applicationScope.ads.get(1).advertiserName}</div> 
  <div class ="h5 mt-5" style = " font-family: 'Montserrat' "> Brand: ${applicationScope.ads.get(1).brandName}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Category: ${applicationScope.ads.get(1).category}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Skin Type: ${applicationScope.ads.get(1).skinType}</div> 
  <div class ="h5" style = " font-family: 'Montserrat' "> Usage: ${applicationScope.ads.get(1).usage}</div> 
  <div class ="h4 mt-5" style = " font-family: 'Montserrat' "> Price: $ ${applicationScope.ads.get(1).unitPrice} </div>
  
  <a href = "${applicationScope.ads.get(1).description}">
        <div class = "position-relative shadow" style = "background: #FCF9F1 ;width: 200px; height: 80px">
                        <div class ="position-absolute h4 custom-center custom-no-break" style = "font-family: 'Montserrat'">
                           More Info
                        </div>
                    </div>
  </a> 
  
                    </div>
                    </div>
                </div>
            </div>
        </div>   


        <div class = "position-relative m-0 p-0" style = "width: 100%;height: 600px;background: #F7ECE9"> 
            <div class = "custom-center shadow position-absolute p-5" style = "background: #fff ;width: 80%; height: 80%;font-family: 'Montserrat'">
                <div class = "custom-horizontal-center position-relative d-inline-block">
                    We repest your privacy.
                </div> <br>
                <div class = "text-center mt-5 h1 d-inline-block position-relative custom-horizontal-center" style = "font-weight:bolder; width: 500px; font-family: 'Inria Serif'">
                    Hey You! <br>
                    Here Is The Key Of <br> Your Skin
                </div>
                <div class = "custom-horizontal-center position-relative shadow mt-5" style = "background: #FCF9F1 ;width: 275px; height: 100px">
                    <div class ="position-absolute h4 custom-center custom-no-break" style = "font-family: 'Montserrat'">
                        Register Now
                    </div>
                </div>
            </div>
        </div>
        <div class = "row position-relative m-0 p-0" style = "width: 100%; height: 275px">
            <div class ="col-6 p-5">
                <div class ="position-relative custom-vertical-center"> 
                    <span class = "h2" style = "font-family: 'Inria Serif'"> 
                        Skinfine
                    </span> <br>
                    <span style = "font-family: 'Montserrat'"> 
                        Your skin, our care
                    </span>
                </div>
            </div> 
            <div class ="col-6 p-5 position-relative "> 
                <div class = "position-relative d-inline-block float-end" style = "text-align: right ;font-family: 'Montserrat'"> <br>
                    <span class = "h3"> Contact Us </span> <br>
                    <div class = "mt-3"> 
                        <span class = "position-relative d-inline-block" style = "margin-right: 16px"> 0981130351 </span> 
                        <img src ="Image/Call.png" class ="position-relative d-inline-block" style ="bottom: 2px; width: 16px; height: 16px">
                    </div> 
                    <div class = "mt-1">  
                        <span class = "position-relative d-inline-block" style = "margin-right: 16px"> Skinfine Vietnam </span> 
                        <img src ="Image/Facebook.png" class ="position-relative d-inline-block" style ="bottom: 4px; width: 20px; height: 20px">
                    </div>

                    <div class = "mt-1">  
                        <span class = "position-relative d-inline-block" style = "margin-right: 16px"> skinfine.vietnam@gmail.com </span> 
                        <img src ="Image/Gmail.png" class ="position-relative d-inline-block" style ="bottom: 4px; width: 20px; height: 20px">
                    </div>
                    <div class = "mt-1">  
                        <span class = "position-relative d-inline-block" style = "margin-right: 16px"> S7.05, Vinhomes Grand Park, Ho Chi Minh City </span> 
                        <img src ="Image/Location.png" class ="position-relative d-inline-block" style ="bottom: 4px; width: 20px; height: 20px">
                    </div>

                </div>
            </div> 
        </div>
    </div>      

</body>
</html>
