<sign-up>
    
    <div id="container-all" class="grid">
        
        <div id="left-panel" class="col-7">
            <div id="banner"></div>
            <h1>Welcome to AzurChat !</h1>
            <p>Join with us if you have an account now~</p>
            <a href="/"><button>SIGN IN</button></a>
        </div>
        <div id="right-panel" class="col-5">
            <div id="logo-container">
                <img src="/src/img/logo.png" alt="">
            </div>
            <div class="input-box">
                <label>Username</label>
                <input name="txtUsn" type="text" placeholder="i know, that's so hard... to take a name..." autofocus>
            </div>
            <div class="input-box">
                <label>Email</label>
                <input name="txtMail" type="text" placeholder="example@gmail.com, of course!">
            </div>
            <div class="input-box">
                <label>Password</label>
                <input name="txtPwd" type="password" placeholder="whatever... but at least 6 characters">
            </div>
            <div class="input-box">
                <label>Confirm Password</label>
                <input name="txtCnfPwd" type="password" placeholder="don't forget what you've typed, huh...?">
            </div>

            <div class="input-box">
                <button id="sign-up-btn">SIGN UP</button>
            </div>
        </div>
        
    </div>
    

    <style>
        #container-all {
            box-shadow: 0px 0px 50px #333333;

            width: 1310px;
            height: 666px;
        }
        

        #left-panel {
            display: inline-block;
            vertical-align: top;
            position: relative;
            padding: 0px;
            text-align: center;
        }

        #banner {
            background-image: url("/src/img/banner-after.png");
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
            padding: 0px 110px 0px;
            box-sizing: border-box;
            
        }

        #logo-container img {
            display: block;
            width: 100%;
            
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

        #right-panel button {
            margin-top: 10px;
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
</sign-up>