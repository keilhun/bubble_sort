def bubble_sort(to_be_sorted)
  n = to_be_sorted.length
  swapped = true
  until swapped == false do
    swapped = false
    (1..n-1).each do |i|
      if to_be_sorted[i-1] > to_be_sorted[i]
        temp = to_be_sorted[i-1]
        to_be_sorted[i-1] = to_be_sorted[i]
        to_be_sorted[i] = temp
        swapped = true
      end
    end
  end
  return to_be_sorted
end

def bubble_sort_by(to_be_sorted)
  n = to_be_sorted.length
  swapped = true
  until swapped == false do
    swapped = false
    (1..n-1).each do |i|
      if yield(to_be_sorted[i-1], to_be_sorted[i]) > 0
        temp = to_be_sorted[i-1]
        to_be_sorted[i-1] = to_be_sorted[i]
        to_be_sorted[i] = temp
        swapped = true
      end
    end
  end
  return to_be_sorted
end

a = bubble_sort([4,76,9,32,67])
print a

a = bubble_sort_by (["hello", "goodbye", "adios", "sayanara"]) do |left, right|
  left.length - right.length
end
print a