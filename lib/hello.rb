def hello_t(arr_1)
  if block_given?
    i = 0

    while i < arr_1.length
      yield arr_1[i]
      i += 1
    end

    arr_1

  else
    puts "Hey! No block was given!"
  end

end

# call your method here!

hello_t(["Tim" , "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end