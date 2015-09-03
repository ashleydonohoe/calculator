def say(msg)
	puts "---------- #{msg} ----------"
end

def int_or_float(i)
  if i =~ /\d+\.\d+/
    i.to_f
  else
    i.to_i
  end
end

while true
  say "What's the first number?"
  num1 = int_or_float(gets.chomp)

  say "What's the second number?"
  num2 = int_or_float(gets.chomp)

  say "1) Add 2) Subtract 3) Multiply 4) Divide"
  operator = gets.chomp.to_i

  if operator < 1 || operator > 4
    puts "Sorry, you didn't choose a valid operator. Do you want to try again?"
    response = gets.chomp
    if response == 'y'
      next
    else
      break
    end
  else
    case
    when operator == 1
      puts "#{num1} plus #{num2} is #{num1 + num2}!"
    when operator == 2
      puts "#{num1} minus #{num2} is #{num1 - num2}!"
    when operator == 3
      puts "#{num1} times #{num2} is #{num1 * num2}!"
    when operator == 4
      if num1 < num2
        puts "Sorry, you can't divide a number by one bigger than itself!"
      else
        puts "#{num1} divided by #{num2} is #{num1 / num2}"
      end
    end

   puts "Do you want to do another calculation? (y/n)"
  break if gets.chomp.downcase != 'y'
  end
end