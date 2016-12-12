//define function
//	takes  string as para
//		create an empty string
//		while counter is less than parameter length
//			take index of parameter and add it to the front of the empty string
//		print empty string


function reverse (str) {
	var newWord = "";
	var i;
	for (i = 0; i < str.length; i++) {
		newWord += str[str.length - (i + 1)];
	}
	return newWord;
}

x = reverse("hello");
if (x != "dont print this") {
	console.log(x);
}
