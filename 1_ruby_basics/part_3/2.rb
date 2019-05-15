arr = (10..100).to_a
arr.delete_if { |z| z % 5 != 0 }
puts arr
