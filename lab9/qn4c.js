function qn4c() {


    "use strict";

    console.clear();
    console.log("You'r viewing solution of lab9 problem no 4 c");
	//using function constructors
	const Person ={
	name:'default',
	age:'default',
	
	greet: function() { 
		return " Greetings, my name is " + this.name + " and I am " + this.age + " years old";
     },	
	salute: function(){
		return "Good morning!, and in case I dont see you, good afternoon, good evening and good night!"

     },
	 studentgreet: function(maj){
         return "Hey, my name is "+ this.name +" and I am studying " + maj +".";
     },
	 professorgreet: function(dept){
         return  "Good day, my name is " + this.name+" and I am in the "+dept+" department."
     }
    }
  
      const greeting = Object.create(Person);
	  greeting.name="Suresh";
	  greeting.age="28";
     console.log(greeting.greet());
     console.log(greeting.salute());

     const student = Object.create(Person);
	 student.name="Suresh";
	 student.age="28";
      console.log(student.studentgreet('MS computer professional'));

     const professor = Object.create(Person);
	 professor.name="GIMMY";
	  professor.age="45";
     console.log(professor.professorgreet('Computer'));
	 
}


