
  def blend(array)
    array.shuffle!
  end
  def mark_sort(array)
    array_max = array.max
    array_min = array.min
    markings = [0] * (array_max - array_min + 1)
    array.each do |a|
      markings[a - array_min] += 1
    end

    res = []
    markings.length.times do |i|
      markings[i].times do
        res << i + array_min;
      end
    end

    res
  end
  #arr = [9, 2, 3, 4, 5, 6, 7, 8]
  #arr = mark_sort(arr)
  #p mark_sort(arr)
  #puts arr