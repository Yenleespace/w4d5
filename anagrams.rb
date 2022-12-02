def anagram?(string1, string2)
    everything = []
    (0...string1.length).each do |i|
        (i...string1.length).each do |j|
            everything << string1[i..j]
        end 
    end 
    
    everything.each do |word|
        word.each_char do |char|
            if !string2.include?(char)
                return false
            else 
                return true
            end 
        end 
    end 
    # if everything.include?(string2)
    #     return true 
    # else 
    #     return false
    # end 
end 

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true