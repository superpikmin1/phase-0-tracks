def array_search (arr, int)
	correct_index = nil
	counter = 0
	while counter < arr.length
		if arr[counter] == int
			correct_index = counter
		end
		counter+=1
	end
	correct_index
end

#arr = [42, 89, 23, 1]
#p array_search(arr, 1)

#p array_search(arr, 24)

def fib (int)
	fib_array = []
	counter = 2
	if int >= 1
		fib_array[0] = 0
	end
	if int >= 2
		fib_array[1] = 1
	end
	while counter < int
		fib_array[counter] = fib_array[counter - 1] + fib_array[counter - 2]
		counter += 1
	end
	fib_array
end

#p fib(6)
#p fib(0)
#p fib(1)
#p fib(2)
#trail = fib(100)
#p trail[-1]

#-define method that takes in a array of integers
#	-compare first 2 indexes and have the smaller one come first
#	-must switch values at specific indexes (use place holder variable)
#	-if not sorted reset counter
#	-if the first 2 indexes are sorted, move on the the 2nd and 3rd indexes
#	-repeat

def sort_int (arr)
	counter = 0
	while counter + 1 < arr.length  
		if arr[counter] <= arr[counter + 1]
			counter+=1
		elsif arr[counter] > arr[counter + 1]
			place_holder = arr[counter]
			arr[counter] = arr[counter + 1]
			arr[counter + 1] = place_holder
			counter = 0
		end
	end
	arr
end

ray = [6, 2, 77, 1, 0, 9]



p sort_int(ray)
