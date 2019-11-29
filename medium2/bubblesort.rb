

def bubble_sort!(arr)
  n = arr.size
  idx = 0
  swapped = 0

  loop do
    if (arr[idx] <=> arr[idx + 1]) == 1
      arr[idx],arr[idx + 1] = arr[idx + 1],arr[idx]
      swapped += 1
    end
    idx += 1

    idx < n - 1 ? next : swapped.zero? ? break : idx = 0 && swapped = 0
  end

  arr
end

# array = [5, 3]
# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]


array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
