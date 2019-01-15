def output(text)
$stdout.puts text
$stdout.flush
end

def input
  selection = $stdin.gets.chomp
end

def get_number1
  selection = $stdin.gets.chomp.to_i
end

def get_number2
  selection = $stdin.gets.chomp.to_i
end

output("Please select a calculator: (a)dvanced or (b)asic")
selection = input

if selection == "a"
  output ("You've chosen Advanced")

  output("(p)ower or (s)quare root?")
  selection = input

  if selection == "p"
  output ("You've chosen Power")

  output("Choose Your First Number")
  number1 = get_number1

  output("Choose Your Power to Number")
  number2 = get_number2

  result = number1 ** number2
  output ("Your answer is " + result)
else

  output ("You've chosen Square Root")

  output("Choose Your Number")
  number1 = get_number1

  result = Math.sqrt(number1)
  output("The Square Root is" + result )
end
else

  output("You've chosen Basic")

  output("Choose Your First Number")
  number1 = get_number1

  output("Choose Your Second Number")
  number2 = get_number2

  output("(a)dd (s)ubtract (m)ultiply (d)ivide")
  selection = input

  if selection == "a"
    result = number1 + number2
    output ("You have chosen add so" + result)
  elsif selection == "s"
    result = number1 - number2
    output("You've chosen subtract so " + result)
  elsif selection == "m"
    result = number1 * number2
    output("You've chosen multiply so " + result)
  else
    result = number1 / number2
    output("You've chosen divide so " + result)
  end
end
