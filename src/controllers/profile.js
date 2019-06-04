import firebase from "firebase";
import riot from "riot";

// TAG
import "../tags/profile.tag";


export default () => {
    
    firebase.auth().onAuthStateChanged(user => {
        if(user) {
            // DISPLAY PROFILE MODAL
            riot.mount("#modal", "profile");
            

            document.getElementById("avatar-img").setAttribute("src", user.photoURL);
            document.getElementById("usn").innerText = user.displayName;
            document.getElementById("email").innerText = user.email;

            document.getElementById("overlay").style.display = "block";
            document.getElementById("profile-container").style.display = "block";

            // CLOSE MODAL
            document.getElementById("overlay").addEventListener("click", e => {
                document.getElementById("overlay").style.display = "none";
                document.getElementById("profile-container").style.display = "none";
            });

            // SIGNOUT EVENT
            var signOutBtn = document.getElementById("sign-out-btn");
            signOutBtn.addEventListener("click", e => {
                try {
                    firebase.auth().signOut();
                    window.location.href = "/";
                } catch {
                    alert("Cannot to sign out :v");
                }
                
            })


            // UPDATE AUTH (photoURL, displayName)
            // UPDATE DATABASE (photoUrl, usn)

            
            
        }
        
    });
    
    
}