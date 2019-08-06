(function () {
    "use strict";
    $(function () {
        $(".boundary").mouseover(red);
        $("#end").mouseover(end);
        $("#gameArea").mouseleave(handleCheating);
        $("#start").click(reset);
    });

    let win = false;

    function red() {
        $(".boundary").addClass("youlose");
        disqualified = true;
    }

    function end() {
        if (win)
            won();
        else lost();
    }

    function won() {
        $("#status").css("color", "green").html("You won!! :)   Click 'S' to play again");
        win = true;
    }

    function lost() {
        $("#status").html("You lose!! :(   Click 'S' to play again");
        $("#status").css({
            "color": "red",
        });
        
    }

    function reset() {
        $(".boundary").removeClass('youlose');
        
        win = false;
        $("#status").html('Click the "S" to begin.').css("color", "black");
    }

    function handleCheating() {
        if (!win) {
            red();
            lost();
        }

    }

})();
