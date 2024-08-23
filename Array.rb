#iterating through an array
array.each_with_index {|value, index|
  puts "#{value} => #{index}" }

  #values_at method:
  arr = [1,2,3,4,5]
  a, b, c = arr.values_at(0, 1, 4)

  #concat 2 arrays together
  a1.concat a2
  a1 + a2
  a1 & a2

  #groupby
  result = []
  Order.all.group_by(&:name).each do |name, orders|
    record = {}
    record["name"] = name
    orders.each do |order|
      record[order.product_id] = order.amount
    end
  result.append(record)
end

#select / filter
[1,2,3,4,5].select {|num| num.even? }     #=> [2, 4]


#uniq
objects = [1, 2, "a", "b", :c, :d]
#This gets you an array with unique objects by class:
objects.uniq(&:class)  #[1, "a", :c]
[david, petter, raphael].uniq { |person| [person.age, person.country] } #multiple conditions

#Array Count
letters = %w(a a a b c d a)
letters.count("a")    # 4
numbers = [1,2,3,4,5,6]
numbers.count(&:even?) # 3
numbers.any?(3)         #true
numbers.all?{|n| n<10}  #true


#map
[:foo, 'bar', 2].map {|element| element.class } # => [Symbol, String, Integer]
[:a, :b, nil, :c].compact #[:a, :b, :c]  - remove nils

#duplicates in an Array:
[1,2,2,3,4,7,4,4].group_by(&:itself).filter_map { |_,v| v if v.size > 1 } # [[2,2],[4,4,4]]

#Array to Hash
#=================================
# Define an array with elements representing key-value pairs
array = [:a, 1, :b, 2, :c, 3]
hash = Hash[*array]  # Output: {:a=>1, :b=>2, :c=>3}

#Associative Arrays:
#=======================================
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
a.rassoc("two")    #=> [2, "two"]
a.rassoc("four")   #=> nil
---
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
a.assoc("letters")  #=> [ "letters", "a", "b", "c" ]
a.assoc("foo")      #=> nil

# https://ruby-doc.org/3.2.2/Array.html
# Also see Enumerable for many of the common methods used in Array

# Methods for Querying
# length, size: Returns the count of elements.
# empty?: Returns whether there are no elements.
# index:  Returns the index of the first element that meets a given criterion.
# rindex: Returns the index of the last element that meets a given criterion.
# hash:   Returns the integer hash code.

# Methods for Comparing
# ==: Returns whether each element in self is == to the corresponding element in a given object.
# eql?: Returns whether each element in self is eql? to the corresponding element in a given object.

# Methods for Fetching - These methods do not modify self.
# []:         Returns one or more elements.
# fetch:      Returns the element at a given offset.
# last:       Returns one or more trailing elements.
# assoc:      Returns the first element that is an array whose first element == a given object.
# rassoc:     Returns the first element that is an array whose second element == a given object.
# at:         Returns the element at a given offset.
# values_at:  Returns the elements at given offsets.
# dig:        Returns the object in nested objects that is specified by a given index and additional arguments.
# slice:      Returns consecutive elements as determined by a given argument.
# sort:       Returns all elements in an order determined by <=> or a given block.
# reverse:    Returns all elements in reverse order.
# compact:    Returns an array containing all non-nil elements.
# rotate:     Returns all elements with some rotated from one end to the other.
# bsearch:    Returns an element selected via a binary search as determined by a given block.
# bsearch_index: Returns the index of an element selected via a binary search as determined by a given block.
# sample:     Returns one or more random elements.
# shuffle:    Returns elements in a random order.


# Methods for Assigning- These methods add, replace, or reorder elements in self.
# []=:              Assigns specified elements with a given object.
# push, append, <<: Appends trailing elements.
# unshift, prepend: Prepends leading elements.
# insert:   Inserts given objects at a given offset; does not replace elements.
# concat:   Appends all elements from given arrays.
# fill:     Replaces specified elements with specified objects.
# replace:  Replaces the content of self with the content of a given array.
# reverse!: Replaces self with its elements reversed.
# rotate!:  Replaces self with its elements rotated.
# shuffle!: Replaces self with its elements in random order.
# sort!:    Replaces self with its elements sorted, as determined by <=> or a given block.
# sort_by!: Replaces self with its elements sorted, as determined by a given block.

# Methods for Deleting - Each of these methods removes elements from self:
# pop:        Removes and returns the last element.
# shift:      Removes and returns the first element.
# compact!:   Removes all nil elements.
# delete:     Removes elements equal to a given object.
# delete_at:  Removes the element at a given offset.
# delete_if:  Removes elements specified by a given block.
# keep_if:    Removes elements not specified by a given block.
# reject!:    Removes elements specified by a given block.
# select!, filter!: Removes elements not specified by a given block.
# slice!:     Removes and returns a sequence of elements.
# uniq!:      Removes duplicates.

# Methods for Combining: Returns an array containing elements found both in self and a given array.
# intersection: Returns an array containing elements found both in self and in each given array.
# +:            Returns an array containing all elements of self followed by all elements of a given array.
# -:            Returns an array containing all elements of self that are not found in a given array.
# |:            Returns an array containing all elements of self and all elements of a given array, duplicates removed.
# union:        Returns an array containing all elements of self and all elements of given arrays, duplicates removed.
# difference:   Returns an array containing all elements of self that are not found in any of the given arrays..
# product:      Returns or yields all combinations of elements from self and given arrays.

# Methods for Iterating
# each_index:           Passes each element index to a given block.
# cycle:                Calls a given block with each element, then does so again, for a specified number of times, or forever.
# combination:          Calls a given block with combinations of elements of self; a combination does not use the same element more than once.
# permutation:          Calls a given block with permutations of elements of self; a permutation does not use the same element more than once.
# repeated_combination: Calls a given block with combinations of elements of self; a combination may use the same element more than once.
# repeated_permutation: Calls a given block with permutations of elements of self; a permutation may use the same element more than once.

# Methods for Converting
# map!, collect!:   Replaces each element with a block return-value.
# flatten:          Returns an array that is a recursive flattening of self.
# flatten!:         Replaces each nested array in self with the elements from that array.
# inspect, to_s:    Returns a new String containing the elements.
# join:             Returns a newsString containing the elements joined by the field separator.
# to_a:             Returns self or a new array containing all elements.
# to_ary:           Returns self.
# to_h:             Returns a new hash formed from the elements; see line 51 for 1 dim
# transpose:        Transposes self, which must be an array of arrays.

# Other Methods
# *: Returns one of the following:
#    With integer argument n, a new array that is the concatenation of n copies of self.
#    With string argument field_separator, a new string that is equivalent to join(field_separator).
# abbrev: Returns a hash of unambiguous abbreviations for elements.
# pack:   Packs the elements into a binary sequence.
# sum:    Returns a sum of elements according to either + or a given block.
