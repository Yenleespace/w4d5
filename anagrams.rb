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

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def second_anagram?(string1, string2)
    new_str = ""
    string1.each_char do |char|
        if !string2.include?(char)
            # string2.delete(char)
            new_str += ""
        else
            new_str += char
        end
    end
    # p string2
    return false if new_str.empty?
    return true
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram(string1, string2)
    sorted_str1 = jumble_sort(string1)
    sorted_str2 = jumble_sort(string2)
    sorted_str1 == sorted_str2
end 

def jumble_sort(str, alphabet = nil)
    alphabet ||= ('a'..'z').to_a
  return str if str.length < 2
  
  sorted = false
  until sorted
    sorted = true
    (0...str.length-1).each do |i|
      if alphabet.index(str[i]) > alphabet.index(str[i+1])
        str[i], str[i+1] = str[i+1], str[i]
        sorted = false
      end
    end
  end
  str
end

# p third_anagram("gizmo", "sally")    #=> false
# p third_anagram("elvis", "lives")    #=> true

def fourth_anagram?(string1, string2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)
    
    string1.each_char { |char| hash_1[char] += 1 }
    string2.each_char { |char| hash_2[char] += 1 }

    hash_1 == hash_2
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true

def bonus_fourth_anagram?(string1, string2)
    hash = Hash.new(0)
    string1.each_char do |char|
        hash[ele] += 1
    end 

    string2.each_char do |char|
        hash[ele] += 1
    end
    hash.values.all? { |ele| ele.length == 2} 
end