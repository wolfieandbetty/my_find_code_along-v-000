require 'pry'

#Iterate through each element in a passed argument (collection) using while. Use a counter (i) and increment each
#time you go into the loop
collection=(1..100).to_a

def my_find (collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i]) 
    i+=1
  end
end

my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
