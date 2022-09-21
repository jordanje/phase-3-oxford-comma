require "pry"

def oxford_comma(array)
    return array.join(" and ") if array.size < 3
    
    index = array.length - 1
    newArr = []
    array.insert(index, "and")
    array.each do |i|
        if i != "and" && i != array.last()
            newArr.push(i + ",")
        else
            newArr << i
        end
    end

 return newArr.join(" ")
end



binding.pry