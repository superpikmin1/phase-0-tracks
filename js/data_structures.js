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
