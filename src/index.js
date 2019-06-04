import { mxFirebase } from "./mx";
import firebase from "firebase";
import route from "riot-route";
import riot from "riot";

// TAGS
import "./tags/sign-in.tag";
import "./tags/sign-up.tag";
import "./tags/header.tag";
import "./tags/chat-window.tag";
import "./tags/profile.tag";

// CSS
import "./mx.css";
import "./index.css";

// CONTROLLERS
import headerController from "./controllers/header";
import chatController from "./controllers/chat";
import signInController from "./controllers/sign-in";
import signUpController from "./controllers/sign-up";
import profileController from "./controllers/profile";
import roomController from "./controllers/room-list";

const firebaseConfig = {
    apiKey: "AIzaSyAr0ddmAxcYR_Fh4EM4-K5RgcX0YN5yKZo",
    authDomain: "azur-chat.firebaseapp.com",
    databaseURL: "https://azur-chat.firebaseio.com",
    projectId: "azur-chat",
    storageBucket: "azur-chat.appspot.com",
    messagingSenderId: "98353657920",
    appId: "1:98353657920:web:9017d071b60fd8cd"
};

mxFirebase.init(firebaseConfig);

route.base("/");

route("/", () => {
    riot.mount("#content", "sign-in");
    signInController();
});

route("/sign-up", () => {
    riot.mount("#content", "sign-up");
    signUpController();
});

route("/room/*", async (room) => {
    firebase.auth().onAuthStateChanged(user => {
        if(user) {
            riot.mount("#header", "header-tag");
            riot.mount("#content", "chat-window");
            headerController();

            roomController();

            chatController(room);

            document.getElementById("display-profile-a").addEventListener("click", e => {
                profileController();
            });
        } else {
            window.location.href = "/";
        } 
    });
});



route.start(true);
