
	function qn3c() {
		"use strict";
		{


		console.clear();
		console.log("You'r viewing solution of lab9 problem no 3 c");

//using object.create 
		const Person = {
			name: 'default',
			age: 'default',
			species: "homo sapien",
			teaches: function (subject) {
				console.log(this.name + " is now teaching " + subject)

			},
			favoriteHobby: function (hobbies) {
				console.log("My Name is " + this.name + " and my hobby is " + hobbies);

			}

		}
		const JohnCena = Object.create(Person);
		JohnCena.name = "Prof. John Cena";
		JohnCena.age = 30;
		JohnCena.teaches("MPP");
		JohnCena.favoriteHobby("Swimming");


		const Joseph = Object.create(Person);
		Joseph.name = "Prof. Joseph";
		JohnCena.age = 35;
		Joseph.teaches("Data Bases");
		Joseph.favoriteHobby("TM");

	}
   }







