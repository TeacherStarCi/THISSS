<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Inria Serif"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="CSS/Custom.css" />
        <script
            src="https://kit.fontawesome.com/d93536958e.js"
            crossorigin="anonymous"
        ></script>
    </head>

    <body>
        <header>
            <!-- place navbar here -->
            <nav
                class="desktop fw-bold d-flex nav justify-content-between align-items-center"
                style="display: none; height: 6.5rem; border-bottom: 2px solid"
                >
                <div class="d-flex justify-content-evenly col-4">
                    <a
                        class="fs-5 d-flex nav-link text-uppercase text-bolder"
                        href="AboutUs.jsp"
                        style="color: black; font-family: Montserrat"
                        >About us</a
                    >
                    <a
                        class="fs-5 d-flex nav-link text-uppercase text-bolder"
                        href="Register.jsp"
                        style="color: black; font-family: Montserrat"
                        >Booking</a
                    >
                </div>

                <div
                    class="d-flex align-items-center justify-content-center col-4"
                    style="
                    background-color: #f7ece9;
                    font-family: Inria Serif;
                    height: 6.5rem;
                    padding-inline: 12rem;
                    border-inline: 2px solid;
                    border-bottom: 2px solid;
                    "
                    >
                    <p class="d-flex h1 fw-bolder" style="font-family: Inria Serif">
                        Skinfine
                    </p>
                </div>
                <div class="d-flex justify-content-evenly col-4">
                    <a
                        class="fs-5 d-flex nav-link text-uppercase text-bolder"
                        href="#"
                        style="color: black; font-family: Montserrat"
                        >Contact us</a
                    >
                    <c:if test = "${empty sessionScope.user}"> 
                        <a
                            class="fs-5 d-flex nav-link text-uppercase text-bolder"
                            href="SignIn.jsp"
                            style="color: black; font-family: Montserrat"
                            >Sign In</a
                        >
                    </c:if>
                    <c:if test = "${not empty sessionScope.user}"> 
                        <a
                            class="fs-5 d-flex nav-link text-uppercase text-bolder"
                            href="ProfileServlet"
                            style="color: black; font-family: Montserrat"
                            >Profile</a
                        >
                    </c:if>
                </div>
            </nav>
        </header>
        <main>
            <section class="d-flex" style="height: 50rem; background-color: #f7ece9">
                <div class="d-flex col-4">
                    <div class="position-relative">
                        <p
                            style="
                            margin-left: 10rem;
                            margin-top: 5rem;
                            font-size: 3rem;
                            font-family: Inria Serif;
                            text-align: right;
                            "
                            >
                            Your Skin,<br />
                            our care
                        </p>
                    </div>
                </div>
                <div
                    class="d-flex col-4"
                    style="
                    background-image: url('Image/Fig1.png');
                    border-inline: 2px solid;
                    "
                    ></div>
                <div class="d-flex col-4">
                    <div class="position-relative">
                        <p
                            style="
                            margin-inline: 1rem;
                            margin-top: 30rem;
                            font-size: 2rem;
                            font-family: Inria Serif;
                            text-align: center;
                            "
                            >
                            Because Healthy Skin is Beautiful Skin
                        </p>
                        <button
                            class="position-absolute"
                            style="
                            margin-inline: auto;
                            left: 50%;
                            transform: translateX(-50%);
                            width: 20rem;
                            height: 5rem;
                            background-color: white;
                            font-family: Montserrat;
                            font-size: 1.5rem;
                            "
                            >
                            <a href="Register.jsp" class="text-decoration-none text-reset"
                               >Book your treatment</a
                            >
                        </button>
                    </div>
                </div>
            </section>
            <section class="d-flex" style="height: 50rem; background-color: #fcf9f1">
                <img
                    src="Image/Fig2.png"
                    alt=""
                    srcset=""
                    style="margin-top: 10rem; margin-left: 5rem; object-fit: contain"
                    class="d-flex col-6"
                    />
                <div
                    class="d-flex col-6 flex-column"
                    style="margin-top: 10rem; width: 25%"
                    >
                    <p class="h1" style="font-family: Inria Serif; line-height: 5">
                        Skinfine...
                    </p>
                    <p class="fs-4">
                        Platform to link users and consultants. Customers can find out their
                        skin problem and they will receive the most appropriate advices and
                        treatments. From there, they will find the key of their skin.
                    </p>
                    <a href="AboutUs.jsp" style="width: fit-content"
                       >About us <i class="fa-solid fa-arrow-right"></i
                        ></a>
                </div>
            </section>
      
            <section style="background-color: #f7ece9">
                <div class = "position-relative text-center pt-5 " style = "font-size: 4rem; font-weight: bold; font-family:  Inria Serif"> Advertisement </div>
                <div class ="row position-relative custom-horizontal-center" style = "width: 85%">
                    <div class = "position-relative text-center pt-5 h3"  style = "font-weight: bold; font-family:  Inria Serif"> Introduced & Represented by ${applicationScope.ads.get(0).avertiserName}  </div>
                    <div class ="col-4 p-3">
                        <div class = "p-3" style = "border: 1px black solid; height: 550px; background: #fff">
                            <img src ="${applicationScope.ads.get(0).cosmetics.get(0).photo}" class ="img-thumbnail position-relative float-end img-fluid">
                             <div class = "position-relative text-center pt-5 h3"  style = "font-weight: bold; font-family:  Inria Serif"> ${applicationScope.ads.get(0).cosmetics.get(0).cosmeticName}  </div>
                              <div class = "position-relative text-center h3"  style = "font-weight: bold; font-family:  Montserrat"> ${applicationScope.ads.get(0).cosmetics.get(0).unitPrice} $  </div>
                              
                              <div class = "text-center"> 
                              <a href ="${applicationScope.ads.get(0).cosmetics.get(0).description}$" class="text-decoration-none text-reset h3 position-relative">
                               
                               Get More Info
                              </a>
                              </div>
                        </div>
                    </div>
                     <div class ="col-4 p-3">
                        <div class = "p-3" style = "border: 1px black solid; height: 550px; background: #fff">
                            <img src ="${applicationScope.ads.get(0).cosmetics.get(1).photo}" class ="img-thumbnail position-relative float-end img-fluid">
                             <div class = "position-relative text-center pt-5 h3"  style = "font-weight: bold; font-family:  Inria Serif"> ${applicationScope.ads.get(0).cosmetics.get(1).cosmeticName}  </div>
                              <div class = "position-relative text-center h3"  style = "font-weight: bold; font-family:  Montserrat"> ${applicationScope.ads.get(0).cosmetics.get(1).unitPrice} $  </div>
                              
                              <div class = "text-center"> 
                              <a href ="${applicationScope.ads.get(0).cosmetics.get(1).description}$" class="text-decoration-none text-reset h3 position-relative">
                               
                               Get More Info
                              </a>
                              </div>
                        </div>
                    </div>
                      <div class ="col-4 p-3">
                        <div class = "p-3" style = "border: 1px black solid; height: 550px; background: #fff">
                            <img src ="${applicationScope.ads.get(0).cosmetics.get(2).photo}" class ="img-thumbnail position-relative float-end img-fluid">
                             <div class = "position-relative text-center pt-5 h3"  style = "font-weight: bold; font-family:  Inria Serif"> ${applicationScope.ads.get(0).cosmetics.get(2).cosmeticName}  </div>
                              <div class = "position-relative text-center h3"  style = "font-weight: bold; font-family:  Montserrat"> ${applicationScope.ads.get(0).cosmetics.get(2).unitPrice} $  </div>
                              
                              <div class = "text-center"> 
                              <a href ="${applicationScope.ads.get(0).cosmetics.get(2).description}$" class="text-decoration-none text-reset h3 position-relative">
                               
                               Get More Info
                              </a>
                              </div>
                        </div>
                    </div>
                 
                </div>
            
            </section>

    
            <section>
                <div
                    class="position-relative"
                    style="height: 40rem; background: #f7ece9"
                    >
                    <div
                        class="position-absolute p-5 d-flex flex-column align-items-center"
                        style="
                        background: #fff;
                        width: 80%;
                        height: 80%;
                        font-family: 'Montserrat';
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        "
                        >
                        <div class="d-flex" style="font-size: 2rem;">We repest your privacy.</div>
                        <div
                            class="d-flex text-center h1 d-inline-block"
                            style="font-size: 4rem; font-weight: bolder; font-family: 'Inria Serif';margin-top: 1rem;"
                            >
                            Hey You! <br />
                            Here Is The Key Of <br />
                            Your Skin
                        </div>
                        <button
                            class="position-absolute"
                            style="
                            margin-inline: auto;
                            top: 70%;
                            left: 50%;
                            transform: translateX(-50%);
                            width: 20rem;
                            height: 5rem;
                            background-color: white;
                            font-family: Montserrat;
                            font-size: 1.5rem;
                            "
                            >
                            <a href="Register.jsp" class="text-decoration-none text-reset"
                               >REGISTER</a
                            >
                        </button>
                    </div>
                </div>
            </section>
        </main>
        <footer
            class="d-flex container-fluid"
            style="height: 15rem; background-color: #fcf9f1"
            >
            <div class="col-3 col-sm-4 p-5">
                <div class="position-relative custom-vertical-center">
                    <p class="h1" style="font-family: 'Inria Serif'">Skinfine</p>
                    <p style="font-family: 'Montserrat'">Your skin, our care</p>
                </div>
            </div>
            <div class="col-9 col-sm-8 p-5">
                <div
                    class="position-relative d-inline-block float-end"
                    style="text-align: right; font-family: 'Montserrat'"
                    >
                    <p class="h3">Contact Us</p>
                    <div class="mt-1">
                        <p class="d-inline" style="margin-right: 1rem">0981130351</p>
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="mt-1">
                        <p class="d-inline" style="margin-right: 1rem">Skinfine Vietnam</p>
                        <i class="fa-brands fa-facebook"></i>
                    </div>
                    <div class="mt-1">
                        <p class="d-inline" style="margin-right: 1rem">
                            skinfine.vietnam@gmail.com
                        </p>
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="mt-1">
                        <p class="d-inline" style="margin-right: 1rem">
                            S7.05, Vinhomes Grand Park, Ho Chi Minh City
                        </p>
                        <i class="fa-solid fa-earth-asia"></i>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
