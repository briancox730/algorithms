#bubble
arr = [8,5,0,3,4,2,1,9,7]

def bubble(arr)
  puts arr.inspect
  for i in (0..arr.length-1) do
    for j in (1..arr.length-i-1) do
      if arr[j-1] > arr[j]
        arr[j-1], arr[j] = arr[j], arr[j-1]
      end
    end
  end
  puts arr.inspect
end

# bubble(arr)

def selection(arr)
  puts arr.inspect
  for i in (0..arr.length-1) do
    lowest = arr[i]
    index = i
    for j in (i..arr.length-1) do
      if arr[j] < lowest
        lowest = arr[j]
        index = j
      end
    end
    arr[i], arr[index] = arr[index], arr[i]
  end
  puts arr.inspect
end

# selection(arr)

def insertion(arr)
  puts arr.inspect
  for i in (1..arr.length-1) do
    for j in (0..i) do
      if arr[j] > arr[i]
        index = j
        item = arr.delete_at(i)
        arr.insert(index, item)
      end
    end
    puts arr.inspect
  end
  puts arr.inspect
end

# insertion(arr)

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

def merge_sort(arr)
  return arr if arr.size < 2
  left = arr[0, arr.length/2]
  right = arr[arr.length/2, arr.length]
  merge(merge_sort(left), merge_sort(right))
end

puts merge_sort(arr).inspect
