

function qn1() {


    "use strict";




/* test function */
function myFunctionTest1(expected, found) {
    if(expected.length !== found.length)
        return "TEST FAILED.  Expected length " + expected.length + " found length" + found.length;
    for(var i = expected.length; i--;) {
        if(expected[i] !== found[i])
            return "TEST FAILED.  Expected " + expected[i] + " found " + found[i];
    }

    return "TEST SUCCEEDED";
}

/* takes an word to be remove as argument and remove that word from the calling string object */
     String.prototype.filter=function(word){
             return this.replace(word, '');
            }


         console.clear();
         console.log("You'r viewing solution of lab9 problem no 1");
    console.log("Expected output of reverse array  is 'This house is  nice!'  " + myFunctionTest1("This house is  nice!", "This house is not nice!".filter('not')));




//console.log("This house is not nice!".filter('not'));


   }

