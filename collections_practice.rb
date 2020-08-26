def sort_array_asc(array) #take in array of integers
  array.sort  #return copy of the array with the integers in ascending order
end

def sort_array_desc(array) #take in array of integers
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      1
    else a > b
      -1 #switched the 1 and -1
    end #return copy of array w/ integers in descending order
  end
end

def sort_array_char_count(array) #take in array of strings
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    else a.length > b.length
      1
    end
  end
end
#returns copy of array w/ the strings ordered in ascending order by length

def swap_elements(array) #take in array
  array.sort do |a, b|
    if array.index(a) < 1 || array.index(b) < 1
      0
    elsif array.index(a) < array.index(b)
      1
    else array.index(a) > array.index(b)
      -1
    end
  end
end
#swap 2nd & 3rd elements, 2nd - index of 1, 3rd - index of 2 
# blake = 0, ashley = 1, scott = 2

def reverse_array(array) #take array of integers
  array.sort do |a, b|
    if array.index(a) == array.index(b)
      0
    elsif array.index(a) < array.index(b)
      1
    else array.index(a) > array.index(b)
      -1 
    end 
  end
end
#return copy of array w/ elements in reverse order
#expect [12, 4, 35] to become [35, 4, 12]
# if return = 1, will swap

def kesha_maker(array) #take in array of strings
  array.each {|name| name[2] = "$"}
end
#replace third character in each string w/ $
#use .each method

def find_a(array)
  array.select do |fruit|
    fruit.start_with?("a")
  end
end
#return all strings in array that start w/ letter "a"

def sum_array(array) #take in array of integers
  array.inject {|sum, number| sum + number}
end
#add together all the integers in array
#return sum of integers
#advanced - try using .inject method

def add_s(array) #take in array of strings
  array.each_with_index.collect do |element, index|
    if index < 1 || index > 1
      element + "s"
    else
      element
    end
  end
end

#add "s" to each word EXCEPT for 2nd element (index = 1)
#try using .each_with_index w/ .collect




