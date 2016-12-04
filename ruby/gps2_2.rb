# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # split individual words
  # put words into hash as keys
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list (items)
	list = items.split(' ')
	item_list = {}
	list.each do |list_item|
		item_list[list_item] = 1
	end
	item_list
end


new_list = create_list("carrots apples cereal pizza")
p new_list


# Method to add an item to a list 
# input: item list, item name and optional quantity (default 1)
# steps: Add item as key (and quantity as value) to hash
# output: print updated hash

def add_item(list, item, quantity = 1)
	if list.has_key?(item)
		update_list(list, item, quantity)
	else 
		list[item] = quantity
	end
	list
end

add_item(new_list, "bananas", 5)

p new_list

# Method to remove an item from the list
# input: list and item name
# steps: remove key with == item name
# output: print hash 


def remove_item (list, item)
	list.delete(item)
	list
end

remove_item(new_list, "apples")
p new_list
# Method to update the quantity of an item
# input: list and item name and quantity
# steps: 
		# use item name to find key
		# change value to new quantity
# output: list

def update_list (list, item, quantity)
	list[item] = quantity
	list
end

update_list(new_list, "pizza", 3)
p new_list


add_item(new_list, "carrots", 3)
add_item(new_list, "crackers")
add_item(new_list, "bananas")
p new_list

# Method to print a list and make it look pretty
# input: hash (item list)
# steps:
	#go through hash printing key and value pair, making them easy to read
# output: print readable text

def print_list (list)
	readable_list = "You need to buy: "
	list.each do |item, quantity|
		readable_list << "#{quantity} #{item}, "
	end
	readable_list[-2] = "."
	readable_list
end

p print_list(new_list)

#I learned that the more detailed your psuedocode is, the easier it will be to make the method
#With a hash you can easily #each and access a key and a value at the same time and it makes the pairing very obvious
#With an array you can put each item/value into the array easily but the pairing and accessing of each is much more complicated
#A method will return the last line in the method
#You can pass any type of data type as an argument
#You can call methods inside other methods to communicate information, or make global variables
# #each was clarified for me and how to create hashes.