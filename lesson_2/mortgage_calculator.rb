def monthly_interest_calculator(interest)
  calc = nil
  if interest > 1.00 then calc = (interest / 100 / 12).to_f
  else calc = (interest / 12).to_f
  end
  calc
end

def loan_in_months(years)
  years * 12
end

def loan_duration?(years)
  if (years.to_i.to_s != years) then false
  elsif (years == "15" || years == "30") then true
  else
    false
  end
end

def integer?(number)
  if (number == "0" || number.to_i < 0) then false
  elsif number.to_i.to_s == number then true
  else
    false
  end
end

def float?(number)
  if (number.to_f == 0.0 || number.to_f < 0.0) then false
  elsif (number.to_f.to_s == number || number.to_i.to_s == number) then true
  else
    false
  end
end

def apr_check(apr)
  apr = apr.split(" ").join()
  apr = apr.split("%").join()
end

def principal_check(principal)
  principal = principal.split(" ").join()
  principal = principal.split("$").join()
  principal = principal.split(",").join()
end

def mortgage_calculator(principal, mir, ldm)
  calc =  (principal * ( mir  /  ( 1  -  ( 1  +  mir ) ** ( - ldm ) ) ) )
end

def prompt(message)
  puts "=>  #{message}"
end

puts "Welcome to the Mortgage Calculator."

loop do # begin main loop

  principal = nil
  mir = nil
  ldm = nil
  mortgage = nil
  principal_input = nil
  apr_input = nil
  ldr_input = nil

  loop do # principal input from user
    prompt("Please enter the principal loan amount:")
    prompt("(Enter a whole number. Decimals are not accepted)")

    principal_input = gets.chomp
    principal_input = principal_check(principal_input)

      if integer?(principal_input)
        break
      else
        prompt("That doesn't look like a valid number. Please try again.")
      end

  end

  loop do # APR (per year) input from user
    prompt("Please enter the APR (Annual Percentage Rate):")
    apr_input = gets.chomp
    apr_input = apr_check(apr_input)
      if float?(apr_input)
        break
      else
        prompt("That doesn't look like a valid number. Please try again.")
      end
  end

  loop do # Loan Duration in Years from user
    prompt("Please enter the Loan Duration in years:\n(Enter 15 or 30)")
    ldr_input = gets.chomp
      if loan_duration?(ldr_input)
        break
      else
        prompt("Only 15 or 30 years are accepted. Please try again.")
      end
  end

  principal = principal_input.to_i
  mir = monthly_interest_calculator(apr_input.to_f)
  ldm = loan_in_months(ldr_input.to_i)
  mortgage = mortgage_calculator(principal, mir, ldm)

  puts "Your mortgage is calculated at $#{format("%.2f", mortgage)} for #{ldm}
  months at #{format("%.4f", mir)}% interest per month."
  puts
  puts "Would you like to perform another mortgage calculation?
  (Type Y or Yes if so)"
  input = gets.chomp
  break unless input.downcase.start_with?('y')

end # end main loop

puts "Thank you for using our Mortgage Calculator!"
