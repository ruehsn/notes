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

#map
[:foo, 'bar', 2].map {|element| element.class } # => [Symbol, String, Integer]
[:a, :b, nil, :c].compact #[:a, :b, :c]  - remove nils

#duplicates in an Array:
[1,2,2,3,4,7,4,4].group_by(&:itself).filter_map { |_,v| v if v.size > 1 } # [[2,2],[4,4,4]]


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