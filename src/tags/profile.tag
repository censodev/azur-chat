<profile>
    <div id="overlay"></div>
    <div id="profile-container">
        <div id="avatar-container">
            <img id="avatar-img">
            <input type="file">
        </div>
        <div id="profile-header">
            <p id="usn"></p>
        </div>

        <div id="profile-body">
            <p id="email"></p>
            <button id="sign-out-btn">SIGN OUT</button>
            
        </div>
    </div>

    <style>
        @keyframes overlayAnimation {
            from {opacity: 0.1;}
            to {opacity: 0.7;}
        }

        @keyframes Animation {
            from {opacity: 0.1;}
            to {opacity: 1;}
        }

        #overlay {
            animation: overlayAnimation 0.3s ease-out ;
            -moz-animation: overlayAnimation 0.3s ease-out ;
            -o-animation: overlayAnimation 0.3s ease-out ;

            position: fixed;
            top: 0px;
            left: 0px;

            width: 100%;
            height: 100%;
            background: black;
            opacity: 0.7;
        }

        #profile-container {
            animation: Animation 0.3s ease-out ;
            -moz-animation: Animation 0.3s ease-out ;
            -o-animation: Animation 0.3s ease-out ;

            margin: auto;
            width: 700px;
            z-index: 100;

            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        #avatar-container {
            position: absolute;
            top: 40px;
            left: 50px;

            width: 180px;
            height: 180px;

            border-radius: 50%;
            border: 5px solid #666666;
        }

        #avatar-img {
            border-radius: 50%;
            width: 180px;
            height: 180px; 

            position: absolute;

            z-index: 10;
        }

        #avatar-container input {
            border-radius: 50%;
            width: 180px;
            height: 180px;
            opacity: 0;
            z-index: 100; 

            position: absolute;
        }

        #profile-header {
            
            height: 130px;
            width: 100%;

            background:
                -webkit-linear-gradient(65deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                -webkit-linear-gradient(135deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                -webkit-linear-gradient(205deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
            background:
                linear-gradient(25deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                linear-gradient(315deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                linear-gradient(245deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
       
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        #usn {
            color: white;
            font-size: 34px;
            font-weight: bold;
            display: block;
            position: absolute;
            top: 60px;
            left: 250px;
            
        }

        #email {
            color: #666666;
            font-size: 34px;
            
            display: block;
            position: absolute;
            top: 150px;
            left: 250px;
        }




        #profile-body {
            background: white;
            height: 500px;
        }

        #sign-out-btn {
            margin: 300px 300px;
            width: 100px;
            height: 50px;

            border-radius: 5px;
            background: #333333;
            border: 1px solid #333333;

            color: white;
            font-size: 18px;
            font-weight: bold;

            opacity: 0.9;
        }

        #sign-out-btn:hover {
            opacity: 1;
            transition: 0.3s;
        }
    </style>
</profile>