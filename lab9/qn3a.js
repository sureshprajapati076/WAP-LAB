function qn3a() {


    "use strict";


	console.clear();
	console.log("You'r viewing solution of lab9 problem no 3 ( a )");



// Function Constructor
function Person(name, age){
    this.name = name;
	this.age=age;
}

Person.prototype.favoriteHobby=function(hobbies){
	console.log("My Name is " + this.name + " and my hobby is " + hobbies  );
	
}

Person.prototype.species="homo sapien";

const JohnCena = new Person("Prof. John Cena", 30);
JohnCena.teach = function(subject){
	
	console.log(this.name + " is now teaching " + subject);
	}
JohnCena.teach("MPP");

const hobby_cena= JohnCena.favoriteHobby("Swimming");


const joseph= new Person("Prof. Joseph", 50);



joseph.teach = function(subject){
	console.log(this.name + " is now teaching " + subject);
	}
joseph.teach("Data Bases");

const hobby_joseph= joseph.favoriteHobby("Teaching");


       		
   }







