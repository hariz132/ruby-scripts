def bubble_sort(arr)
  arr_end_sorted = 0
  loop do
    swap_counter = 0
    arr.each_index do |index|
       # after n iterations, n elements at the end of the array is already sorted:
      break if index == arr.length - 1 - arr_end_sorted
      if arr[index] > arr[index + 1]
        temp = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = temp
        swap_counter += 1
      end
    end

    # whole array is fully sorted if no swaps were required in an iteration:
    break if swap_counter == 0
    arr_end_sorted += 1
  end

  arr
end

# check with example from odin site:
a = [4,3,78,2,0,2]
p bubble_sort(a)
p bubble_sort(a) == a.sort

b = [4, 60, 46, 2, 34, 26, 59, 21, 19, 3, 50]
p bubble_sort(b)
p bubble_sort(b) == b.sort
 