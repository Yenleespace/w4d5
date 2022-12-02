
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
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#The time complexity is O(n^2) quadratic 

def my_min(list)
    smallest = list.first
    (1...list.length - 1).each do |i|
        smallest = list[i] if smallest > list[i]
    end
    smallest
end 
#The time complexity is O(n)

# Largest Contiguous Sub-sum

#lines 34 - 39 dominates the bottom loops
# def largest_contiguous_subsum(list)
#     sub_arr = []
#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             current_pair = list[i..j] #this is also n time
#             sub_arr << current_pair
#         end
#     end
#     largest = 0
#     new_arr = sub_arr.map do |sums|
#         sums.sum #n
#     end
#     new_arr.sort.last
# end
#The time complexity is O(n^3) and quadratic
list = [5, 7, -15, 6, 8, 9]
#    p  largest_contiguous_subsum(list) # => 8

def largest_contiguous_subsum(list) #[5, 7, -15, 6, 8]
    largest = list.first #[5]
    largest_sum = 0
    (1...list.length).each do |i| #1
        if largest + list[i] > largest_sum
            largest = list[i - 1]
            largest_sum = largest + list[i]
        end
        # if list[i] > 
    end
    largest_sum
end 
p largest_contiguous_subsum(list)