def opening(array)
  empty = Array.new
  sorting(array, empty)
end

def sorting(unsorted, sorted)
  if unsorted.empty?
    return sorted
  end

  compare = unsorted.pop
  leftover = []
  while !unsorted.empty?
    if compare >= unsorted.last
      leftover << compare
      compare = unsorted.pop
    else
      leftover<<unsorted.pop
    end
  end

  sorted << compare


  sorting(leftover, sorted)

end

puts opening([75, 100, 85, 65, 84, 87, 95])

