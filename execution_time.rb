
def my_min(list)
    sorted = false
    until sorted 
        sorted = true
        (0...list.length - 1).each do |i|
            if list[i] < list[i + 1]
                list[i], list[i + 1] = list[i + 1], list[i]
                sorted = false
            end 
        end
    end  
 list.last
end 
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

#The time complexity is O(n^2) quadratic 

def my_min(list)
end 
#The time complexity is O(n)
