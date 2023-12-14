
lowercase = ('a'..'z').to_a


uppercase = ('A'..'Z').to_a

puts "enter a string to be encrypted"
input = gets

lowerhash = Hash.new
upperhash = {}

(0..25).each do |i|
  lowerhash[lowercase[i]] = i
  upperhash[uppercase[i]] = i
end

puts "enter a shift to the right"
shift = gets.to_i

flipped_hash_lower = lowerhash.invert
flipped_hash_upper = upperhash.invert


final_str = ""

def handle_working(working, shift)
    final_index = working + shift
    if final_index > 25
      final_index -= 25 + 1

    end
    puts final_index
    final_index
end

input.each_char do |c|
  if c.include? "\n"

    break
  end
  if lowercase.include?(c)
    working = lowerhash[c].to_i
    final_index = handle_working(working, shift)

    final_str += flipped_hash_lower[final_index]
  end
  if uppercase.include?(c)
    working = upperhash[c].to_i
    final_index = handle_working(working, shift)
    puts flipped_hash_upper[final_index-1]
    final_str += flipped_hash_upper[final_index]
  end



end

print(final_str)
