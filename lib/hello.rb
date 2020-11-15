def hello_t(array)
    if block_given?
        i = 0

        while i < array.length #while i is less than index, continues
            yield(array[i]) #block specific
            i = i + 1
        end

        array #return changed values to array ??
    else
        puts "Hey! No block was given!"
    end

end


hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T") #will only give names starting with "T"
      puts "Hi, #{name}"
    end
  end 

