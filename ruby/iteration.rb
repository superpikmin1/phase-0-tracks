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

#deletion
#fruits.delete_if {|fruit| fruit.length > 6}
#vegetables.delete_if {|veg, color| color == "green"}

#p fruits
#p vegetables

#selection
#fruits.select!{|fruit| fruit.length < 5}
#vegetables.select!{|veg, color| color == "orange"}

#p fruits
#p vegetables

#selection2
#p fruits.bsearch{|fruit| fruit == "Strawberry"}
#vegetables.keep_if{|veg, color| color == "orange"}

#dropping
#fruits = fruits.drop_while{|fruit| fruit.include? "a"}
#vegetables.reject! {|veg, color| color != "green"}


#p fruits
#p vegetables
