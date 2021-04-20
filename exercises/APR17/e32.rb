# write a program that prompts the user for two positive integers
# and then prints the reuslts of the following operations
# on those two numbers: 
# addition, subtraction, prodcut, quotient, remaineder, and power
# do not worry about input validation

# Example: 

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

def operations(n1,n2)
  hashbrown = {}

  hashbrown[:+] = n1 + n2
  hashbrown[:-] = n1 - n2
  hashbrown[:*] = n1 * n2
  hashbrown[:/] = n1 / n2
  hashbrown[:%] = n1 % n2
  hashbrown[:**] = n1 ** n2

  hashbrown.each do |k,v|
    puts "#{n1} #{k} #{n2} = #{v.round(2)}"
  end

end

puts "==> Enter the first number:"
first = gets.chomp.to_f
second = nil

puts "==> Enter the second number:"
loop do
  second = gets.chomp.to_f
  break unless second == 0
  puts "Invalid. Number cannot be 0."
end

operations(first,second)