function longestPhrase (arr) {
	var longest = "";
	for(var i = 0; i < arr.length; i++){
		if (arr[i].length > longest.length) {
			longest = arr[i];
		}
	}
	return longest;
}

function pairing(obj1, obj2) {
	var share = false;
	var key1;
	var key2;
	for(key1 in obj1){
		for(key2 in obj2) {
			if (key1 == key2 && obj1[key1] == obj2[key2]){
				share = true;
			}
		}
	}
	return share;
}

function randomWords(int) {
	var wordArray = [];
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	for(var i = 0; i < int; i++){
		var word = ""
		for(var x = 0; x < Math.floor((Math.random() * 10) + 1); x++){
			word = word + alpha[Math.floor((Math.random() * 25) + 0)];
		}
		wordArray.push(word);
	}
	return wordArray;
}

//for longest phrase function
var phrases = ["This is a phrase", "This is also a phrase", "yessir"];
var long = longestPhrase(phrases);
console.log(long);

//for pairing function
var charmander = {color: 'red', height: 3};
var charizard = {color: 'red', height: 7};
var zapados = {color: 'yellow', height: 6};
var similar = pairing(charmander, charizard);
console.log(similar);
var different = pairing(zapados, charizard);
console.log(different);

//for random words function
var randos = randomWords(3);
console.log(randos);

//final driver code
for(var y = 0; y < 10; y++) {
	var randomArray = randomWords(5);
	console.log(randomArray);
	var longWord = longestPhrase(randomArray);
	console.log(longWord)
}