import { mxFirebase } from "../mx";
import firebase from "firebase";
import { welcomeModalController } from "./welcome";

// TAG
import  "../tags/welcome-modal.tag";

export default () => {
    var createInitProfile = () => {
        var usn = document.getElementsByName("txtUsn")[0].value; 
        firebase.auth().onAuthStateChanged(user => {
            if(user) {
                user.updateProfile({ 
                    displayName: usn,
                    photoURL: "/src/img/avt-alt.png"
                
                });
            }
            
        });
    }

    var letSignUp = async () => {
        
        var mail = document.getElementsByName("txtMail")[0].value;
        var pwd = document.getElementsByName("txtPwd")[0].value;
        var cnfPwd = document.getElementsByName("txtCnfPwd")[0].value;

        if(pwd === cnfPwd) {
            try {
                await mxFirebase.signUp(mail, pwd);
                await mxFirebase.signIn(mail, pwd);

                welcomeModalController.successful();
                
            } catch(err) {
                welcomeModalController.failed(err);
                
            }
        } else {
            welcomeModalController.failed("Error: Your password you confirmed is invalid");
        }
        
    }




    var signUp = document.getElementById("sign-up-btn");
    signUp.addEventListener("click",async e => {
        letSignUp();
        createInitProfile();
        
    });

    var inputObj = document.getElementsByTagName("INPUT");
    for(var i = 0; i < inputObj.length; i++) {
        inputObj[i].addEventListener("keyup", e => {
            if(e.keyCode === 13) {
                letSignUp();
                createInitProfile();

            } 
        });
    }
}