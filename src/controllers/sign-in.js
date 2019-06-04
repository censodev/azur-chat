import { mxFirebase } from "../mx";
import { welcomeModalController } from "./welcome";

// TAG
import "../tags/welcome-modal.tag";

export default () => {

    var letSignIn = async () => {
        var mail = document.getElementsByName("txtMail")[0].value;
        var pwd = document.getElementsByName("txtPwd")[0].value;

        try {
            await mxFirebase.signIn(mail, pwd);

            // alert("Susscessful !");
            welcomeModalController.successful();
            
        } catch(err) {
            welcomeModalController.failed(err);
            
        }
    }

    var signInBtn = document.getElementById("sign-in-btn");
    signInBtn.addEventListener("click",async e => {
        letSignIn();
    });

    var inputObj = document.getElementsByTagName("INPUT");
    for(var i = 0; i < inputObj.length; i++) {
        inputObj[i].addEventListener("keyup", e => {
            if(e.keyCode === 13) letSignIn();
        });
    }
}