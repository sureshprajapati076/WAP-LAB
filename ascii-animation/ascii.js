(function () {
    let animation = null;

    let startButton;
    let stopButton;
    let fontSelector;
    let animationType;
    let animationDisplayPane;
    let speedSelectTurbo;

    let currentAminationText;

    let delay = 250;

    let timer = null;

    let index = 0;

    window.onload = function () {
        animationDisplayPane = document.getElementById("text-area");

        startButton = document.getElementById("start");
        startButton.onclick = startAnimation;

        stopButton = document.getElementById("stop");
        stopButton.onclick = stopAnimation;

        animationType = document.getElementById("animation");
        animationType.onchange = changeAnimationText;
        animationType.selectedIndex = 0;

        fontSelector = document.getElementById("fontsize");
        fontSelector.onchange = changeFontSize;
        fontSelector.selectedIndex = 2;

        speedSelectTurbo = document.getElementById("turbo");
        speedSelectTurbo.onchange = changeDelay;
    };

    function startAnimation() {
        switchButtonsToEnableOrDisable(true);
        currentAminationText = animationDisplayPane.value;
        if (timer === null) {
            timer = setInterval(turboSpeed, delay);
        }

    }

    function stopAnimation() {
        switchButtonsToEnableOrDisable(false);

        if (timer !== null) {
            clearInterval(timer);
            timer = null;
        }
        index =0;
        restoreOrininalText();
    }

    function changeAnimationText() {
        let selected = animationType.options[animationType.selectedIndex].value;
        animation = ANIMATIONS[selected];


        animationDisplayPane.value = animation;
    }

    function changeFontSize() {
        animationDisplayPane.style.fontSize = fontSelector.options[fontSelector.selectedIndex].value;
    }

    function changeDelay() {
        if (speedSelectTurbo.checked) {
            delay = 50;
            clearInterval(timer);
            timer = setInterval(turboSpeed, delay);
        }
        else {
            delay = 250;
            clearInterval(timer);
            timer = setInterval(turboSpeed, delay);
        }
    }

    function switchButtonsToEnableOrDisable(status) {
        if (status === true) {
            startButton.disabled = true;
            stopButton.disabled = false;

            animationType.disabled = true;
        } else if (status === false) {
            startButton.disabled = false;
            stopButton.disabled = true;

            animationType.disabled = false;
        }
    }

    function turboSpeed() {

        let frames = currentAminationText.split("=====\n");
        animationDisplayPane.value = frames[index];
        index++;

        if (index === frames.length)
            index = 0;
    }

    function restoreOrininalText(){
        animationDisplayPane.value = currentAminationText;

    }
})();
