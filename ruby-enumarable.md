## Learn Enumerable in X minutes
```ruby

#all? [{ |obj| block } ] → true or false

%w[ant bear cat].all? { |word| word.length >= 3 } #=> true
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false
[nil, true, 99].all?                              #=> false



#Adding Items to Arrays

arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

#Iterating over Arrays

arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]

```
[Wiencyj](http://ruby-doc.org/core-2.2.3/Enumerable.html)
