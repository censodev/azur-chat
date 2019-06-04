import firebase from "firebase";

export default (room) => {
    var chatCollection = firebase.firestore().collection("rooms").doc(room).collection("messages");
    
    var textBox = document.getElementById("my-msg");
    textBox.addEventListener("keyup", e => {
        var msg = textBox.value;
        if(e.keyCode === 13 && msg != '') {
            
            var id = Date.now().toString();

            firebase.auth().onAuthStateChanged(user => {
                if(user) {
                    chatCollection.doc(id).set({ 
                        usn: user.displayName,
                        photoUrl: user.photoURL,
                        msg: msg,
                    });
                }
                
            });

            textBox.value = '';
        }
    });



    


    chatCollection.onSnapshot(async (snapshot) => {
        var data = await snapshot.docs;

        var text = "";
        data.forEach(doc => {
            var docData = doc.data();
            
            text += "<tr> " +
                        "<td class='td-1'><img src='" + docData.photoUrl + "'></td>" +
                        "<td class='td-2'>" +
                            "<div class='each-usn'><span>" + docData.usn + "</span></div>" +
                            "<div class='each-msg'><span>" + docData.msg + "</span></div>" +
                        "</td>" +
                    "</tr>";
            
        });
        
        document.getElementById("msg-container").innerHTML = text;


        var div = document.getElementById("msg-display");
        div.scrollTop = div.scrollHeight;
    });  




    // chatCollection.onSnapshot( async (snapshot) => {
    //     var data = await snapshot.docs;

    //     var newestData = data[data.length - 1].data();
    //     // console.log(newestData);
    //     var text =  "<tr> " +
    //                     "<td>" + newestData.usn + "</td>" +
    //                     "<td>" + newestData.msg + "</td>" +
    //                 "</tr>";

    //     document.getElementById("msg-container").insertAdjacentHTML("beforeend", text);


    // });   
    
}