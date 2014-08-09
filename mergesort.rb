#!/usr/bin/env ruby

def merge_sort(arr)
	if arr.size > 1
		left, right = merge_sort(arr[0..arr.size/2-1]), merge_sort(arr[arr.size/2..-1])  # Split array in half
		return merge(left,right)  # Merge the halved array
	end
	arr  # Return original array if its size is 1 or less
end

def merge(l, r, merged_list = [])
	while l.size > 0 && r.size > 0  # while both arrays are populated...
		 # Compare the first two items in each list.  
		 # Move the smaller of the two into the merged list and remove it from the original array
		merged_list << (l[0] < r[0] ? l.shift : r.shift)  
	end
	merged_list += l.size == 0 ? r : l  # Combine whichever list is not empty with the merged list
	merged_list
end

arr = [38,27,43,3,-9,82,10,15,107,39,455,6,22,11]

puts merge_sort(arr)
