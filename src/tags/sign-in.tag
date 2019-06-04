<sign-in>
    
    <div id="container-all" class="grid">
        
        <div id="left-panel" class="col-7">
            <div id="banner"></div>
            <h1>Welcome to AzurChat !</h1>
            <p>Join with us by creating an account now~</p>
            <a href="/sign-up"><button>SIGN UP</button><a>
        </div>
        <div id="right-panel" class="col-5">
            <div id="logo-container">
                <img src="/src/img/logo.png" alt="">
                <p>AzurChat</p>
                <div id="faction-container">
                    <span><img src="/src/img/sakura-empire.png" alt=""></span>
                    <span><img src="/src/img/eagle-union.png" alt=""></span>
                    <span><img src="/src/img/ironblood.png" alt=""></span>
                    <span><img src="/src/img/royal-navy.png" alt=""></span>
                </div>
            </div>
            <div class="input-box">
                <label>Email</label>
                <input name="txtMail" type="text" placeholder="example@gmail.com" autofocus>
            </div>
            <div class="input-box">
                <label>Password</label>
                <input name="txtPwd" type="password" placeholder="whatever you can remember...">
            </div>
            <a href="/" id="forgot-pwd">Forgot password ?</a>
            <div class="input-box">
                <button id="sign-in-btn">SIGN IN</button>
            </div>
        </div>
        
    </div>
    

    <style>
        #container-all {
            box-shadow: 0px 0px 50px #333333;

            width: 1310px;
            height: 657px;
           
        }
        

        #left-panel {
            display: inline-block;
            vertical-align: top;
            position: relative;
            padding: 0px;
            text-align: center;
        }

        #banner {
            background-image: url("/src/img/banner.jpg");
            opacity: 0.9;
            
            z-index: -999999;
            position: absolute;
            background-repeat: no-repeat;
            width: 100%;
            height: 100%;
        }

        #left-panel h1 {
            font-size: 70px;
            word-break: break-all;
            text-align: center;
            margin: 175px auto 0px;
            padding: 0px 20px 0px;
            color: white;
            text-shadow: 0px 5px 5px black;
        }

        #left-panel p {
            color: white;
            text-shadow: 0px 5px 3px black;
            text-align: center;
            font-size: 36px;
        }

        #left-panel button {
            margin: 100px auto;
            height: 70px;
            width: 200px;
            border: 3px solid white;
            border-radius: 10px;
            
            font-weight: bold;
            font-size: 30px;
            color: white;
            background: black;
            opacity: 0.6;
        }

        #left-panel button:hover {
            transition: 0.4s;

            background: white;
            opacity: 0.9;
            color: #888888;
           
        }






        #right-panel {
            display: inline-block;
            vertical-align: top;
            
            text-align: center;
            padding: 20px 50px 40px;
            background: white;
        }

        #logo-container {
            padding: 0px 80px 10px;
            box-sizing: border-box;
            
        }

        #logo-container img {
            width: 100%;
        }

        #logo-container p {
            font-size: 38px;
            display: block;
        }

        #faction-container {
            margin-top: 5px;
            height: 40px;
        }

        #faction-container span {
            height: 100%;
            display: inline-block;
        }

        #faction-container img {
            height: 100%;
        }

        .input-box {
            display: block;
            padding: 20px 60px 0px;
        }

        .input-box label {
            display: block;
            text-align: left;
            font-weight: bold;
            padding-left: 7px;
        }

        .input-box input {
            margin-top: 5px;
            height: 50px;
            width: 100%;
            border-radius: 5px;
            box-sizing: border-box;
            padding: 20px;
            border: 2px solid #888888;
            font-size: 16px;
        }

        #forgot-pwd {
            display: block;
            text-align: right;
            padding: 15px 75px 10px;
            color: #888888;
            text-decoration: none;
            font-weight: bold;
            font-style: italic;
        }

        #forgot-pwd:hover {
            text-decoration: underline;
        }

        #right-panel button {
            height: 50px;
            width: 100%;
            border: none;
            border-radius: 5px;
            
            font-weight: bold;
            font-size: 18px;
            color: white;
            background: #888888;
        }

        #right-panel button:hover {
            opacity: 0.8;
            transition: 0.3s;
        }

    </style>
</sign-in>