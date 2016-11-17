require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams-form') do
  @target_word = params.fetch("first_word")
  @second_word = params.fetch("second_word")
  @third_word = params.fetch("third_word")
  @fourth_word = params.fetch("fourth_word")

  paramArray = [@second_word, @third_word, @fourth_word]
  if @fourth_word == ""
    paramArray.pop()
  end
  if @third_word == ""
    paramArray.pop()
  end
  params_length = paramArray.length
  if params_length == 1
    @anagrams_output = (@target_word.check_params(paramArray))
  elsif params_length == 2
    @anagrams_output = (@target_word.check_params(paramArray))
  elsif params_length == 3
    @anagrams_output = (@target_word.check_params(paramArray))
  end

  erb(:anagrams_output)
end
