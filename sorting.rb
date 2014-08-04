#bubble
arr = [8,5,0,3,4,2,1,9,7,6]

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

def insertion(arr)
  puts arr.inspect
  for i in (0..arr.length-1) do
    for j in (i..arr.length-1) do
      lowest = arr[0]
      index = 0
      if arr[j] < lowest
        lowest = arr[j]
        index = j
      end
      arr[i], arr[index] = arr[index], arr[i]
    end
  end
  puts arr.inspect
end

insertion(arr)
