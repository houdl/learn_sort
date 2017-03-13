def bubble_sort1(arr)
  1.upto(arr.length-1) do |i|
    (arr.length-i).times do |j|
      if(arr[j] > arr[j+1])
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  arr
end

def bubble_sort2(arr)
  sorted = false
  count = arr.count

  until sorted
    sorted = true
    (count - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    count -= 1
  end
  arr
end

def bubble_sort3(arr)
  sorted = false
  count = flag = arr.count

  while(flag > 0)
    k = flag
    flag = 0
    (k - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        flag = i + 1
      end
    end
  end
  arr
end