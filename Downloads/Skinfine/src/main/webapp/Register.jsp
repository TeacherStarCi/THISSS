<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="CSS/Custom.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link href='https://fonts.googleapis.com/css?family=Inria Serif' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            background-color: #f1f1f1;
        }

        #regForm {
            background-color: #ffffff;
            margin: 100px auto;
            font-family: Raleway;
            padding: 40px;
            width: 70%;
            min-width: 300px;
        }

        h1 {
            text-align: center;
        }

        input {
            padding: 10px;
            width: 100%;
            font-size: 17px;
            font-family: Raleway;
            border: 1px solid #aaaaaa;
        }

        /* Mark input boxes that gets an error on validation: */
        input.invalid {
            background-color: #ffdddd;
        }

        /* Hide all steps by default: */
        .tab {
            display: none;
        }

        button {
            background-color: #04AA6D;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 17px;
            font-family: Raleway;
            cursor: pointer;
        }

        button:hover {
            opacity: 0.8;
        }

        #prevBtn {
            background-color: #bbbbbb;
        }

        /* Make circles that indicate the steps of the form: */
        .step {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbbbbb;
            border: none;
            border-radius: 50%;
            display: inline-block;
            opacity: 0.5;
        }

        .step.active {
            opacity: 1;
        }

        /* Mark the steps that are finished and valid: */
        .step.finish {
            background-color: #04AA6D;
        }
    </style>
    <body>

        <form id="regForm" action="/action_page.php">
            <div>  </div>
            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <%--  <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p> --%>
                <%--  <p><input placeholder="Last name..." oninput="this.className = ''" name="lname"></p> --%>
                <div class = "row position-relative">
                    <div class = "h1 position-relative custom-horizontal-center text-center" style = "font-family: 'Inria Serif';font-weight:  bolder">
                        Choose Your Skin Type
                    </div>
                    <div class = "col-4 p-3 position-relative">
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'">   Normal Skin </span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">  A 'normal' skin type means that your skin is balanced and do not have any uncomfortable issues
                            </span>
                        </div> 
                    </div>

                    <div class = "col-4 p-3 position-relative">     
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'"> Oily Skin </span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">  Your skin produces excess sebum year-round, you are likely in the 'oily' skin type group
                            </span>
                        </div> 
                    </div>

                    <div class = "col-4 p-3 position-relative">
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'">  Dry Skin</span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">    Dry skin looks and feels rough and dull, sometimes also appearing red or flaky. 
                            </span>
                        </div> 
                    </div>

                </div>
                <div class = "row">

                    <div class = "col-4 p-3 position-relative">
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'">     Combination Skin</span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">     As the name implies, combination skin has oily and dry characteristics. 
                            </span>
                        </div> 
                    </div>

                    <div class = "col-4 p-3 position-relative">
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'">     Sensitive Skin </span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">     Signs of sensitive skin come from the breakdown of your skin's protective barrier.
                            </span>
                        </div> 
                    </div>

                    <div class = "col-4 p-3 position-relative">
                        <div class = "p-3 position-relative shadow" style = "height: 150px; border-radius:  5px">
                            <span class = "h5" style = "font-family: 'Inria Serif'">     Unknown </span> <br>
                            <span style = "font-size: 12px; font-family: 'Montserrat'">   
                                Select this option if you do not understand well about your skin.
                            </span>
                        </div> 
                    </div>

                </div>
            </div>
            <div class="tab">
                <%--   <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p> --%>
                <%--   <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p> --%>
                <div class = "h1 text-center position-relative" style = "font-family: 'Inria Serif';font-weight:  bolder"> What Is Your Skin Problem? </div>
                <div class ="row mt-3">
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">
                            <div class ="position-absolute custom-center">  Acnes
                            </div>  
                        </div>   
                    </div>
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">

                            <div class ="position-absolute custom-center">   Wrinkles
                            </div>  
                        </div>   
                    </div>
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">
                            <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">

                                <div class ="position-absolute custom-center">    Dryskin
                                </div>  
                            </div>  

                        </div>   
                    </div>

                </div>
                <div class ="row">
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">

                            <div class ="position-absolute custom-center">     Blackhead
                            </div> 
                        </div>   
                    </div>
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">

                            <div class ="position-absolute custom-center">    Sunburn
                            </div> 
                        </div>   
                    </div>
                    <div class ="col-4 position-relative" style = "height: 80px"> 
                        <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">
                            <div class ="position-absolute custom-center">   Freckles
                            </div>   
                        </div>   
                    </div>

                </div>
                <div class ="row">
                    <div class ="offset-4 col-4 position-relative" style = "height: 80px"> 
                          <div class = "position-absolute custom-center" style = "height: 60px; width: 120px; border-radius: 10px; background: #FCF9F1">
                          <div class ="position-absolute custom-center">  Other
                            </div>   
                        </div>    
                    </div>
                </div>
            </div>
            <div class="tab">
                 <div class = "h1 text-center position-relative" style = "font-family: 'Inria Serif';font-weight:  bolder"> Leave Your Information Here </div>
             <p><input placeholder="Your Name" oninput="this.className = ''" name="email"></p>
               <p><input placeholder="Your Phone Number" oninput="this.className = ''" name="email"></p>
              Contact Time Zone: <select>
                       <option> 7AM - 10AM </option>
                        <option> 2PM - 5PM</option>
                         <option> 7PM - 10PM </option>
                   </select>
               <input type ="date">
             
            </div>
            <div class="tab">
                <div> Thank You. Our Dermatologists Will Contact You Soon.</div>
            </div>
            <div style="overflow:auto;">
                <div style="float:right;">
                    <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                    <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                </div>
            </div>
            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align:center;margin-top:40px;">
                <span class="step"></span>
                <span class="step"></span>
                <span class="step"></span>
                <span class="step"></span>
            </div>
        </form>

        <script>
            var currentTab = 0; // Current tab is set to be the first tab (0)
            showTab(currentTab); // Display the current tab

            function showTab(n) {
                // This function will display the specified tab of the form...
                var x = document.getElementsByClassName("tab");
                x[n].style.display = "block";
                //... and fix the Previous/Next buttons:
                if (n == 0) {
                    document.getElementById("prevBtn").style.display = "none";
                } else {
                    document.getElementById("prevBtn").style.display = "inline";
                }
                if (n == (x.length - 1)) {
                    document.getElementById("nextBtn").innerHTML = "Submit";
                } else {
                    document.getElementById("nextBtn").innerHTML = "Next";
                }
                //... and run a function that will display the correct step indicator:
                fixStepIndicator(n)
            }

            function nextPrev(n) {
                // This function will figure out which tab to display
                var x = document.getElementsByClassName("tab");
                // Exit the function if any field in the current tab is invalid:
                if (n == 1 && !validateForm())
                    return false;
                // Hide the current tab:
                x[currentTab].style.display = "none";
                // Increase or decrease the current tab by 1:
                currentTab = currentTab + n;
                // if you have reached the end of the form...
                if (currentTab >= x.length) {
                    // ... the form gets submitted:
                    document.getElementById("regForm").submit();
                    return false;
                }
                // Otherwise, display the correct tab:
                showTab(currentTab);
            }

            function validateForm() {
                // This function deals with validation of the form fields
                var x, y, i, valid = true;
                x = document.getElementsByClassName("tab");
                y = x[currentTab].getElementsByTagName("input");
                // A loop that checks every input field in the current tab:
                for (i = 0; i < y.length; i++) {
                    // If a field is empty...
                    if (y[i].value == "") {
                        // add an "invalid" class to the field:
                        y[i].className += " invalid";
                        // and set the current valid status to false
                        valid = false;
                    }
                }
                // If the valid status is true, mark the step as finished and valid:
                if (valid) {
                    document.getElementsByClassName("step")[currentTab].className += " finish";
                }
                return valid; // return the valid status
            }

            function fixStepIndicator(n) {
                // This function removes the "active" class of all steps...
                var i, x = document.getElementsByClassName("step");
                for (i = 0; i < x.length; i++) {
                    x[i].className = x[i].className.replace(" active", "");
                }
                //... and adds the "active" class on the current step:
                x[n].className += " active";
            }
        </script>

    </body>
</html>