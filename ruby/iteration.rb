fruits = ["banana", "strawberry", "kiwi"]
vegetables = {
	carrot: "orange",
	peas: "green",
	corn: "yellow"
}

p fruits
p vegetables

fruits.each do |fruit|
	puts fruit
end

vegetables.each do |vegetable, color|
	puts "A #{vegetable} is #{color}"
end

p fruits
p vegetables

fruits.map! do |fruit|
	fruit.capitalize!
end



p fruits
p vegetables

