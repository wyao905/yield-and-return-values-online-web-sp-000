require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    binding.pry
    i += 1
  end
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }