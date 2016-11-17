class String
  define_method(:check_params) do |params|
    params_length = params.length
    target_word = self
    if params_length == 1
      puts "length 1"
      anagram_check(target_word, params[0])
    elsif params_length == 2
      puts "length 2"
      anagram_check2(target_word, params[0], params[1])
    elsif params_length == 3
      puts "length 3"
      anagram_check3(target_word, params[0], params[1], params[2])
    end
  end
end

class String
  define_method(:anagram_check) do |target_word, second_word|
    first_word = target_word.split("").sort().join("")
    second_word = second_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    booleanArray
  end
end

class String
  define_method(:anagram_check2) do |target_word, second_word, third_word|
    first_word = target_word.split("").sort().join("")
    second_word = second_word.split("").sort().join("")
    third_word = third_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == third_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    booleanArray
  end
end

class String
  define_method(:anagram_check3) do |target_word, second_word, third_word, fourth_word|
    puts second_word, third_word, fourth_word
    first_word = target_word.split("").sort().join("")
    second_word = second_word.split("").sort().join("")
    third_word = third_word.split("").sort().join("")
    fourth_word = fourth_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == third_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == fourth_word
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    booleanArray
  end
end

# puts 'cat'.anagram_check(['act', 'atc', 'tac'])
