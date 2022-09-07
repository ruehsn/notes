#===============================================================================
#HASH
#===============================================================================
h = Hash.new("Go Fish") #go fish will be the default value if key is added without a value
h["a"] = 100

#Declare Hash on the fly:
h = { "aq" => 100, "b" => 200 }

#iterating through a hash
h.each {|key, value|  puts "#{key} => #{value}"}

# define hash with default value of 0:
h = Hash.new { |h, k| h[k] = 0 }
h['foo'] += 3 # => 3
#values_at:
hash = {bacon: 300, chocolate: 200}
p hash.values_at(:bacon, :chocolate)
# [300, 200]
#Hash Transform:
h = {bacon: 200, coconut: 300}
h.transform_values! { |v| v * 2 }
{:bacon=>400, :coconut=>600}

