import firebase from "firebase";
import mxFirebase from "../mx";

export default async () => {
    firebase.firestore().collection("rooms").onSnapshot(async snapshot => {
        // DISPLAY ROOM LIST
        var roomList = await snapshot.docs;

        var txt = '';

        roomList.forEach(room => {
            txt += "<div class='rooms'>" + room.id + "</div>"
        });

        document.getElementById("rooms-list").innerHTML = txt;

        // REDIRECT ROOM
        var rooms = document.getElementsByClassName("rooms");
        for(var i = 0; i < rooms.length; i++) {
            rooms[i].addEventListener("click", e => {
                window.location.href = "/room/" + e.target.innerText;
                
            });
        };


        // ADD ROOM
        // var roomsContainer = document.getElementById("rooms-list");
        // roomsContainer.insertAdjacentHTML("beforeend", "<div id='add-room'>+</div>");

        // document.getElementById("add-room").addEventListener("click", e => {
        //     var roomName = prompt("Enter room's name:");
        //     firebase.firestore().collection("rooms").docs(roomName);
        // })

        
        

        
    });
 
}

