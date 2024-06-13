# Basic Calculator in Ruby

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  if b != 0
    a / b
  else
    'Division by zero error'
  end
end

def calculator
  loop do
    puts "Welcome to the Ruby Calculator!"
    puts "Select operation: "
    puts "1. Add"
    puts "2. Subtract"
    puts "3. Multiply"
    puts "4. Divide"
    puts "5. Exit"

    print "Enter choice (1/2/3/4/5): "
    choice = gets.chomp.to_i

    break if choice == 5

    if [1, 2, 3, 4].include?(choice)
      print "Enter first number: "
      num1 = gets.chomp.to_f
      print "Enter second number: "
      num2 = gets.chomp.to_f

      result = case choice
               when 1
                 add(num1, num2)
               when 2
                 subtract(num1, num2)
               when 3
                 multiply(num1, num2)
               when 4
                 divide(num1, num2)
               end

      puts "Result: #{result}"
    else
      puts "Invalid choice! Please choose a valid operation."
    end
  end

  puts "Thank you for using the Ruby Calculator!"
end

# Start the calculator
calculator
