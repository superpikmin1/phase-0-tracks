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

p fib(6)
p fib(0)
p fib(1)
p fib(2)

trail = fib(100)

p trail[-1]