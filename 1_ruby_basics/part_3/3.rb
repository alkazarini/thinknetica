arr = []
arr[0] = 0
arr[1] = 1
x = 1

while arr[x] < 100 - arr[x - 1]
  x += 1
  arr[x] = arr[x - 1] + arr[x - 2]
end

puts arr
