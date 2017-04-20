class Fixnum
  define_method(:coin) do

  input = self
  second_input = input % 25
  third_input = second_input % 10
  fourth_input = third_input % 5

  change = {25 => "quarter", 10 => "dime", 5 => "nickel", 1 => "penny"}

  # below represents quarters
  if input % 25 == 0
    until input == 0
    input = input.-(25)
    change.fetch(25)
    puts change.fetch(25)
    end
  elsif input % 25 != 0 && input >= 25
    until input <= 25
    input = input.-(25)
    change.fetch(25)
    puts change.fetch(25)
    end
  end

# below represents dimes
  if second_input % 10 == 0
    until input == 0
    input = input.-(10)
    change.fetch(10)
    puts change.fetch(10)
    end
  elsif second_input % 10 != 0 && second_input >= 10
    until second_input <= 10
    second_input = second_input.-(10)
    change.fetch(10)
    puts change.fetch(10)
    end
  end

# below represents nickels
  if third_input % 5 == 0
    until input == 0
    input = input.-(5)
    change.fetch(5)
    puts change.fetch(5)
    end
    elsif third_input % 5 != 0 && third_input >= 5
    until third_input <= 5
    third_input = third_input.-(5)
    change.fetch(5)
    puts change.fetch(5)
    end
  end

  # below represents pennies
  until fourth_input % 5 == 0
    fourth_input = fourth_input.-(1)
    change.fetch(1)
    puts change.fetch(1)
  end
