require 'pry'

#Iterate through each element in a passed argument (collection) using while. Use a counter (i) and increment each
#time you go into the loop
collection=[1,5,15,21,45]
def my_find (collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i]) # when the method hits this line it sends the value of collection[i] to the block
    i+=1
  end
end

my_find(collection[i]) {|i| i % 3==0 and i % 5 == 0 }
