array = ["Tim", "Tom", "Jim"]
def hello_t(array)
  if block_given?
  name = 0
 
  while name < array.length
    yield array[name]
    name = name + 1
  end
  array
  else
    puts "Hey! No block was given!"
  end
end


 hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
