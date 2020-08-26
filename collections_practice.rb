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
  new_array = []
  array.each do |name|
    new_array << name.insert(3, "$")
  end
  new_array
end
#replace third character in each string w/ $
#use .each method
#build new array




