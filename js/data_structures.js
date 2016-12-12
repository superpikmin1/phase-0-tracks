var colors = ['green', 'yellow', 'pink', 'black'];
var horses = ['Sharon', 'Kathy', 'Silver', 'Branco'];

colors.push('purple');
horses.push('Jon');
var horseBook = {};
for(var i = 0; i < horses.length; i++) {
	var name = horses[i];
	var color = colors[i];
	horseBook[name] = color;
}
console.log(horseBook)


function Car (model, year, color, cool) {
	this.model = model;
	this.year = year;
	this.color = color;
	this.cool = cool;

	this.vroom = function() {
		console.log("VROOOOM")
	}
}

var myCar = new Car("Kia Soul", 2013, "red", false);
var jonsCar = new Car("Mazda5", 2003, "blue", false);
var JimsCar = new Car("Tesla", 2015, "blue", true);
console.log(myCar);