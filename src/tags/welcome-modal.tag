<welcome>
    <div id="modal">
        <div id="img-container">
            <img id="welcome-gif">
        </div>
        <p id="modal-title"></p>
        <small id="modal-text"></small>
        <button id="go-relax">OK<button>
    <div>

    <style>
        @keyframes myAnimation {
            from {top: 10%;}
            to {top: 50%;}
            from {opacity: 0.1;}
            to {opacity: 1;}
        }
        
        #modal {
            padding: 10px 20px;
            box-sizing: border-box;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            width: 500px;
            
            background: white;

            border-radius: 5px;
            box-shadow: 0px 0px 20px black;

            animation: myAnimation 0.5s ease-out ;
            -moz-animation: myAnimation 0.5s ease-out ;
            -o-animation: myAnimation 0.5s ease-out ;
        }

        #img-container {
            text-align: center;
            height: 200px;
            padding-top: 30px;
            box-sizing: border-box;
        }

        #img-container img {
            height: 100%;
        }

        p {
            display: block;
            margin-top: 10px;
            font-size: 36px;
            text-align: center;
            text-shadow: 0px 2px 3px black;
            
        }

        small {
            text-align: center;
            font-size: 18px;
            font-style: italic;
            display: block;
            margin-top: 10px;
        }

        #go-relax {
            display: block;
            margin: 45px auto;
            width: 120px;
            height: 60px;
            border-radius: 7px;

            color: white;
            font-size: 30px;
            font-weight: bold;

            border: 3px solid #666666;
            background: #666666;
            
        }

        #go-relax:hover {
            background: white;
            color: #666666;

            transition : 0.3s;
        }
    </style>
</welcome>