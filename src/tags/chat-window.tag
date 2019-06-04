<chat-window>
    <div id="chat-window">
        <div id="msg-box" class="grid">
            <div id="rooms-list" class="col-3">
                <!--  GET ROOM LIST FROM DB  -->
            </div>
            <div id="msg-display" class="col-9">
                <table id="msg-container"></table>
            </div>
        </div>
        <div id="input-box">
            <input id="my-msg" type="text" placeholder="Type something..." autofocus>
        </div>
    </div>

    <style>
        @keyframes myAnimation {
            from {opacity: 0.1;}
            to {opacity: 1;}
        }

        #chat-window {
            animation: myAnimation 0.3s ease-out ;
            -moz-animation: myAnimation 0.3s ease-out ;
            -o-animation: myAnimation 0.3s ease-out ;

            box-sizing: border-box;
            width: 1000px;
            
            border: 1px solid #888888;
            padding: 12px 20px 20px;

            box-shadow: 0px 0px 40px #333333;

            background:
                -webkit-linear-gradient(65deg, hsla(140, 0%, 60%, 1) 10%, hsla(140, 0%, 60%, 0) 80%),
                -webkit-linear-gradient(135deg, hsla(225, 0%, 70.2%, 1) 15%, hsla(225, 0%, 70.2%, 0) 80%),
                -webkit-linear-gradient(205deg, hsla(340, 0%, 80%, 1) 100%, hsla(340, 0%, 80%, 0) 70%);
            background:
                linear-gradient(25deg, hsla(140, 0%, 60%, 1) 10%, hsla(140, 0%, 60%, 0) 80%),
                linear-gradient(315deg, hsla(225, 0%, 70.2%, 1) 15%, hsla(225, 0%, 70.2%, 0) 80%),
                linear-gradient(245deg, hsla(340, 0%, 80%, 1) 100%, hsla(340, 0%, 80%, 0) 70%);
        }

        #msg-box {
            background: white;
            height: 500px;
            border-radius: 5px;

            box-shadow: 0px 0px 20px #666666;
        }

        #rooms-list {
            display: inline-block;
            overflow: auto;
            
            height: 100%;
            padding: 0px;

            background: #d9d9d9;

            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            
        }

        .rooms {
            display: block;
            width: 100%;
            height: 70px;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            padding: 15px 20px;
            box-sizing: border-box;

            font-size: 26px;
            color: white;
            font-style: italic;

            background:
                -webkit-linear-gradient(65deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                -webkit-linear-gradient(135deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                -webkit-linear-gradient(205deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
            background:
                linear-gradient(25deg, hsla(140, 0%, 20%, 1) 10%, hsla(140, 0%, 20%, 0) 80%),
                linear-gradient(315deg, hsla(225, 0%, 40%, 1) 15%, hsla(225, 0%, 40%, 0) 80%),
                linear-gradient(245deg, hsla(340, 0%, 53.33%, 1) 100%, hsla(340, 0%, 53.33%, 0) 70%);
        }

        .rooms:hover {
            opacity: 0.7;
            transition: 0.3s;
        }

        #add-room {
            display: block;
            width: 100%;
            height: 70px;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            
            box-sizing: border-box;

            font-size: 50px;
            font-weight: bold;
            color: black;
            text-align: center;

            background: white;
            
            opacity: 0.5;
        }

        #add-room:hover {
            opacity: 0.7;
            transition: 0.3s;
        }








        #msg-display {
            display: inline-block;
            overflow: auto;
            border-left: 4px solid #888888;
            height: 100%;
            background-image: url("/src/img/bg.jpg");
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }

        #msg-container {
            width: 100%;
            height: 85%;
            padding-left: 10px;
            box-sizing: border-box;
        }

        #msg-container tr {
            margin: 15px 5px;
            display: block;
        }

        .td-1 {
            width: 70px;
            height: 70px;
        }

        .td-1 img {
            width: 100%;
            border-radius: 50%;
        }

        .td-2 {
            padding-left: 10px;
            font-size: 18px;
            max-width: 900px;
        }

        .each-usn {
            font-weight: bold;
            padding-bottom: 3px;
            font-style: italic;
            color: white;
        }

        .each-msg {
            padding: 7px 10px;
            background: white;
            width: auto;
            display: table;
            border-radius: 4px;
            word-break: break-all;
            opacity: 0.8;
            box-shadow: 5px 5px #888888;
        }

        #input-box {
            
            margin-top: 15px;
        }

        #input-box input {
            width: 100%;
            height: 50px;
            padding: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid white;
            font-size: 16px;
        }
    </style>
</chat-window>