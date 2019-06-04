import firebase from "firebase";

export default () => {
    firebase.auth().onAuthStateChanged(user => {
        if(user) {
            document.getElementById("username").innerText = user.displayName;
            document.getElementById("my-avatar").setAttribute("src", user.photoURL);
        }
    });
}
