
lowercase = ('a'..'z').to_a


uppercase = ('A'..'Z').to_a

puts "enter a string to be encrypted"
input = gets

lowerhash = Hash.new


(0..25).each do |i|
  lowerhash[lowercase[i]] = i

end

puts lowerhash
puts "enter a shift to the right"
shift = gets.to_i

flipped_hash_lower = lowerhash.invert


final_str = ""

input.each_char do |c|
  if c.include? "\n"

    break
  end
  working = lowerhash[c].to_i
  final_index = working + shift
  if final_index > 25
    final_index - 25

  end
  final_str += flipped_hash_lower[final_index]
end

print(final_str)
