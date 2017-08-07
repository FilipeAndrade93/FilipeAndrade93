def calculate(first_number, second_number, operator)
  if operator == "+"
    return result = addition(first_number, second_number)
  elsif operator == "-"
    return result = subtraction(first_number, second_number)
  elsif operator == "x"
    return result = multiplication(first_number, second_number)
  elsif operator == "/"
    return  result = division(first_number, second_number)
  else
    result = nil
  end
end

def addition(first_number, second_number)
  first_number + second_number
end

def subtraction(first_number, second_number)
  first_number - second_number
end

def multiplication(first_number, second_number)
  first_number * second_number
end

def division(first_number, second_number)
  first_number.to_f / second_number
end
