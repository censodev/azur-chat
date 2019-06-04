<header-tag>
    <nav class="grid">
        <div class="div-container col-4" id="logo-container">
            <img src="/src/img/logo.png">
            <span>AzurChat</span>
        </div>
        <div class="div-container col-8" id="avt-container">
            <a id="display-profile-a">
                <span id="username"></span> 
                <img id="my-avatar">
            </a>
        </div>
    </nav>

    <style>
        nav {
            margin: 0px 0px;

            width: 1000px;
            height: 70px;
            padding: 10px;
            
            
            box-sizing: border-box;

            box-shadow: 0px 0px 40px #333333;

            background:
                -webkit-linear-gradient(65deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                -webkit-linear-gradient(135deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                -webkit-linear-gradient(205deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
            background:
                linear-gradient(25deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                linear-gradient(315deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                linear-gradient(245deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
        }

        .div-container {
            height: 100%;
            display: inline-block;
            padding-bottom: 0px;
        }

        .div-container span {
            display: inline-block;
            font-size: 40px;
            vertical-align: top;
            color: white;
        }

        img {
            height: 100%;
            
        }

        #avt-container {
            text-align: right;
        }

        #username {
            font-size: 20px;
            font-weight: bold;
            vertical-align: super;
            display: inline-block;
            margin-right: 5px;
        }

        #avt-container img {
            border-radius: 50%;
            border: 2px solid white;
            box-sizing: border-box;
        }
    </style>
</header-tag>