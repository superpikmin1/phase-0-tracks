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



var phrases = ["This is a phrase", "This is also a phrase", "yessir"];
var long = longestPhrase(phrases);
console.log(long);

var charmander = {color: 'red', height: 3};
var charizard = {color: 'red', height: 7};
var zapados = {color: 'yellow', height: 6};
var similar = pairing(charmander, charizard);
console.log(similar);
var different = pairing(zapados, charizard);
console.log(different);