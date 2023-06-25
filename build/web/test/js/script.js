const typingText = document.querySelector(".typing-text p"),
inpField = document.querySelector(".wrapper .input-field"),
tryAgainBtn = document.querySelector(".content button"),
timeTag = document.querySelector(".time span b"),
mistakeTag = document.querySelector(".mistake span"),
wpmTag = document.querySelector(".wpm span"),
cpmTag = document.querySelector(".cpm span");

let timer,
maxTime = 60,
timeLeft = maxTime,
charIndex = mistakes = isTyping = 0;

//This function loads a random paragraph from an array called paragraphs and displays it on the webpage.
function loadParagraph() {
    const ranIndex = Math.floor(Math.random() * paragraphs.length);
    typingText.innerHTML = "";
    paragraphs[ranIndex].split("").forEach(char => {
        let span = `<span>${char}</span>`
        typingText.innerHTML += span;
    });
    typingText.querySelectorAll("span")[0].classList.add("active");
    document.addEventListener("keydown", () => inpField.focus());
    typingText.addEventListener("click", () => inpField.focus());
}
function storeData(){
    document.getElementById("submit_btn").click();
} 
//The initTyping function is responsible for handling the user's typing input, 
//updating the game's display, and storing the user's WPM and mistakes in hidden form fields
// for later submission to the server.
function initTyping() {
    //This selects all the span elements inside the typingText container element and stores them in the characters variable.
    let characters = typingText.querySelectorAll("span");
    
    //This gets the character that the user has typed at the current position charIndex in the input field inpField 
    //and stores it in the typedChar variable.
    let typedChar = inpField.value.split("")[charIndex];
    
    //This checks whether the user has not yet typed all the characters in the paragraph (charIndex < characters.length - 1) 
    //and whether there is still time remaining in the game (timeLeft > 0).
    if(charIndex < characters.length - 1 && timeLeft > 0) {
        //This starts the timer by calling the initTimer function every second if it hasn't already been started (!isTyping). 
        //It also sets the isTyping flag to true to indicate that the user has started typing.
        if(!isTyping) {
            timer = setInterval(initTimer, 1000);
            isTyping = true;
        }
        //This handles the case where the user has typed a character (typedChar != null) and updates the display to reflect whether the character is correct or incorrect.
        // If the character is incorrect, the mistakes counter is incremented and the corresponding span element is marked with the incorrect class. If the character is correct, the span element is marked with the correct class.
        if(typedChar == null) {
            //If the user has deleted a character (typedChar == null), 
            //the code moves the charIndex back one position and removes the correct and incorrect classes from the corresponding span element. 
            //If the deleted character was marked as incorrect, the mistakes counter is decremented.


            if(charIndex > 0) {
                charIndex--;
                if(characters[charIndex].classList.contains("incorrect")) {
                    mistakes--;
                }
                characters[charIndex].classList.remove("correct", "incorrect");
            }
        } else {
            if(characters[charIndex].innerText == typedChar) {
                characters[charIndex].classList.add("correct");
            } else {
                mistakes++;
                characters[charIndex].classList.add("incorrect");
            }
            charIndex++;
        }
        //This updates the active character by removing the active class from all span elements and 
        //adding it to the span element at the current charIndex.
        characters.forEach(span => span.classList.remove("active"));
        characters[charIndex].classList.add("active");

        let wpm = Math.round(((charIndex - mistakes)  / 5) / (maxTime - timeLeft) * 60);
        wpm = wpm < 0 || !wpm || wpm === Infinity ? 0 : wpm;
        
        wpmTag.innerText = wpm;
        document.getElementById("wpm_score").value=wpm;
        mistakeTag.innerText = mistakes;
        document.getElementById("mistake_score").value=mistakes;
        cpmTag.innerText = charIndex - mistakes;
    } else {
        clearInterval(timer);
        inpField.value = "";
    }   
}

//The initTimer function is responsible for updating the time remaining in the game and calculating the WPM of the user.
function initTimer() {
    if(timeLeft > 0) { //This checks whether there is still time remaining in the game.
        timeLeft--; //This decrements the timeLeft variable, indicating that one second has passed.
        timeTag.innerText = timeLeft; //This updates the text content of the HTML tag that displays the time remaining.
        let wpm = Math.round(((charIndex - mistakes)  / 5) / (maxTime - timeLeft) * 60);
        wpmTag.innerText = wpm; //This updates the text content of the HTML tag that displays the WPM of the user.
    } else {
        //If there is no time remaining in the game, this stops the timer by calling clearInterval with the timer variable as an argument.
        clearInterval(timer);
    }
}

function resetGame() {
    loadParagraph();//This calls the loadParagraph function to load a new paragraph for the user to type.

    clearInterval(timer);//This stops the timer that is used to track the time remaining in the game.
    timeLeft = maxTime;
    charIndex = mistakes = isTyping = 0;
    inpField.value = "";
    timeTag.innerText = timeLeft;
    wpmTag.innerText = 0;
    mistakeTag.innerText = 0;
    cpmTag.innerText = 0;
}

loadParagraph();
inpField.addEventListener("input", initTyping);
tryAgainBtn.addEventListener("click", resetGame);