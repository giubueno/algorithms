def swap(data, left, right)
  aux = data[left]
  data[left] = data[right]
  data[right] = aux
end

def partition(data, left, right)
  pivot = data[left]
  lowers = left
  highers = right
  while true
    while lowers < highers
      break if data[lowers] > pivot
    end
    while lowers < highers
      break if data[highers] < pivot
    end
    break unless lowers < highers
    swap(data, lowers, highers)
  end
end

def quick(data, beginning, ending)
  pivot = partition(data, beginning, ending)
  partition(data, beginning, pivot)
  partition(data, pivot + 1, ending)
end
