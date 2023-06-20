def merge_sort(arr)
  return arr unless arr.size > 1

  mid = arr.size / 2
  a = merge_sort(arr[0...mid])
  b = merge_sort(arr[mid..])
  sorted = []
  sorted << (a[0] < b[0] ? a.shift : b.shift) while [a, b].none?(&:empty?)
  sorted + a + b
end

p merge_sort([98, 67, 7, 10, 1])
