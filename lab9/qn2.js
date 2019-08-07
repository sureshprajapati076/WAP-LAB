function qn2() {
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


/* sort array in ascending order */
     Array.prototype.bubbleSort=function(){
             return this.sort();
            }



        console.clear();
        console.log("You'r viewing solution of lab9 problem no 2");
        console.log("Expected output of reverse array  is '[-2,0,1,3,4,6]'  " + myFunctionTest1([-2, 0, 1, 3, 4, 6], [6, 4, 0, 3, -2, 1].bubbleSort()));

//console.log([6,4,0, 3,-2,1].bubbleSort());




				
	
		       		
   }



