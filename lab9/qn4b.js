function qn4b() {
    "use strict";

    console.clear();
    console.log("You'r viewing solution of lab9 problem no 4 b");

    //using function constructors
    function Person(name, age) {
        //console.log(this);
        this.name = name;
        this.age = age;

    }

    // const greeting = new Person();
    Person.prototype.greet = function () {
        return " Greetings, my name is " + this.name + " and I am " + this.age + " years old";
    }

    Person.prototype.salute = function () {
        return "Good morning!, and in case I dont see you, good afternoon, good evening and good night!"

    }
    const greeting = new Person('Suresh ', 28);
    console.log(greeting.greet());
    console.log(greeting.salute());

    const student = new Person('Suresh', 28);
    student.major = 'MS computer professional';
    Person.prototype.greet = function () {
        return "Hey, my name is " + this.name + " and I am studying " + student.major + ".";
    }
    console.log(student.greet());

    const professor = new Person('GIMMY', 45);
    professor.department = 'Computer';
    Person.prototype.greet = function () {
        return "Good day, my name is " + this.name + " and I am in the " + professor.department + " department."
    }
    console.log(professor.greet());

}
