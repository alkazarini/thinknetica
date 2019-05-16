arr = []
arr[0] = 0
arr[1] = 1

while arr[-1] < 100 - arr[-2]
  arr << arr[-1] + arr[-2]
end

puts arr
