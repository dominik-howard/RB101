# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

LANGUAGE = 'es'

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  (num.to_i.to_s == num || num.to_f.to_s == num)
end

def operation_to_message(op)
  var = case op
        when '1' then "Adding"
        when '2' then "Subtracting"
        when '3' then "Multiplying"
        when '4' then "Dividing"
        end
  x = "Random code that we'll need here later"

  var
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = nil
  number2 = nil
  operator = nil

  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('must_choose', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1' then number1.to_i() + number2.to_i()
           when '2' then number1.to_i() - number1.to_i()
           when '3' then number1.to_i() * number2.to_i()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}.")

  prompt(messages('perform_again', LANGUAGE))
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt(messages('thank_you', LANGUAGE))
