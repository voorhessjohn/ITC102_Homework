'''I went to a pyLadies workshop last thursday, and learned about iterators! Pretty cool stuff, especially for big data sets.'''

my_list = range(1,100)
my_iter = iter(my_list) 

next(my_iter) # >> 1
next(my_iter) # >> 2
