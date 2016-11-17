class String
  define_method(:check_params) do |params|
    params_length = params.length
    target_word = self
    if params_length == 1
      anagram_check(target_word, params[0])
    elsif params_length == 2
      anagram_check2(target_word, params[0], params[1])
    elsif params_length == 3
      anagram_check3(target_word, params[0], params[1], params[2])
    end
  end
end

class String
  define_method(:anagram_check) do |target_word, second_word|
    first_word = target_word.split("").sort().join("")
    second_word_str = second_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    second_word_boolean = booleanArray[0]
    "#{second_word} is #{second_word_boolean}"
  end
end

class String
  define_method(:anagram_check2) do |target_word, second_word, third_word|
    first_word = target_word.split("").sort().join("")
    second_word_str = second_word.split("").sort().join("")
    third_word_str = third_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == third_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    second_word_boolean = booleanArray[0]
    third_word_boolean = booleanArray[1]
    "#{second_word} is #{second_word_boolean}, #{third_word} is #{third_word_boolean}"
  end
end

class String
  define_method(:anagram_check3) do |target_word, second_word, third_word, fourth_word|
    first_word = target_word.split("").sort().join("")
    second_word_str = second_word.split("").sort().join("")
    third_word_str = third_word.split("").sort().join("")
    fourth_word_str = fourth_word.split("").sort().join("")
    booleanArray = []

    if first_word == second_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == third_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    if first_word == fourth_word_str
      booleanArray.push(true)
    else
      booleanArray.push(false)
    end

    second_word_boolean = booleanArray[0]
    third_word_boolean = booleanArray[1]
    fourth_word_boolean = booleanArray[2]
    "#{second_word} is #{second_word_boolean}, #{third_word} is #{third_word_boolean}, #{fourth_word} is #{fourth_word_boolean}"
  end
end
