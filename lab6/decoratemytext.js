(function() {
    "use strict";

    var textarea;
    var timerId = null;
    window.onload = function () {
        textarea = document.getElementById("txtarea");
        document.getElementById("biggerdecoration").onclick = setBiggerDecoration;
        document.getElementById("blingCheck").onchange = changeBling;

    };

    function setBiggerDecoration() {

       textarea.style.fontSize="24pt";


    }


    function changeBling() {

        if (document.getElementById("blingCheck").checked) {

            textarea.style.fontWeight = "bold";
            textarea.style.color = "green";
            textarea.style.textDecoration = "underline";
            document.body.style.backgroundImage = "url('hundred-dollar-bill.jpg')";
        } else {
            textarea.style.fontWeight = "normal";
            textarea.style.color = "black";
            textarea.style.textDecoration = "none";
            document.body.style.backgroundImage = "none";
        }
    }
})();