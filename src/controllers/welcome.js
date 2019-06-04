import riot from "riot";

var welcomeModalController = {
    successful: () => {
        riot.mount("#modal", "welcome");
        document.getElementById("modal").style.display = "block";
        document.getElementById("welcome-gif").setAttribute("src", "src/img/welcome-successful.gif");
        document.getElementById("modal-title").innerText = "Welcome home, commander !";
        document.getElementById("modal-text").innerText = "It's time to relax, sir ~";
        document.getElementById("go-relax").addEventListener("click", e => {
            window.location.href = "/room/public";
        });
    },

    failed: (err) => {
        riot.mount("#modal", "welcome");
        document.getElementById("modal").style.display = "block";
        document.getElementById("welcome-gif").setAttribute("src", "src/img/welcome-failed.gif");
        document.getElementById("modal-title").innerText = "Somethings wrong, commander !";
        document.getElementById("modal-text").innerText = err;
        document.getElementById("go-relax").addEventListener("click", e => {
            document.getElementById("modal").style.display = "none";
        });
    }
}

export { welcomeModalController }