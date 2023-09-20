#===============================================================================
#HASH  https://ruby-doc.org/3.2.2/Hash.html
#===============================================================================
@date_hash = Hash.new{ |h,k| h[k] = [] } #
h["a"] = h["a"].push(100)


#Declare Hash on the fly:
h = { "aq" => 100, "b" => 200 }

#iterating through a hash
h.each {|key, value|  puts "#{key} => #{value}"}

pet_names = {cat: "bob", horse: "caris", mouse: "arya"}

#skipping either the key or value by using '_' - which has better performance
pet_names.map { |_, name| name }  #=> ["bob, "caris", "arya"]


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



# Enumerable


#Returns the first element for which the block returns a truthy value.
items.detect { |i| i[:name] == name }



# Methods for Creating a Hash
# ::[]:           Returns a new hash populated with given objects.
# ::new:          Returns a new empty hash.
# ::try_convert:  Returns a new hash created from a given object.

# Methods for Setting Hash State
# compare_by_identity: Sets self to consider only identity in comparing keys.
# default=:       Sets the default to a given value.
# default_proc=:  Sets the default proc to a given proc.
# rehash:         Rebuilds the hash table by recomputing the hash index for each key.

# Methods for Querying
# any?:           Returns whether any element satisfies a given criterion.
# compare_by_identity?: Returns whether the hash considers only identity when comparing keys.
# default:        Returns the default value, or the default value for a given key.
# default_proc:   Returns the default proc.
# empty?:         Returns whether there are no entries.
# eql?:           Returns whether a given object is equal to self.
# hash:           Returns the integer hash code.
# has_value?:     Returns whether a given object is a value in self.
# include?, has_key?, member?, key?: Returns whether a given object is a key in self.
# length, size:   Returns the count of entries.
# value?:         Returns whether a given object is a value in self.

# Methods for Comparing
# <:   Returns whether self is a proper subset of a given object.
# <=:  Returns whether self is a subset of a given object.
# ==:  Returns whether a given object is equal to self.
# >:   Returns whether self is a proper superset of a given object
# >=:  Returns whether self is a proper superset of a given object.

# Methods for Fetching
# []:           Returns the value associated with a given key.
# assoc:        Returns a 2-element array containing a given key and its value.
# dig:          Returns the object in nested objects that is specified by a given key and additional arguments.
# fetch:        Returns the value for a given key.
# fetch_values: Returns array containing the values associated with given keys.
# key:          Returns the key for the first-found entry with a given value.
# keys:         Returns an array containing all keys in self.
# rassoc:       Returns a 2-element array consisting of the key and value of the first-found entry having a given value.
# values:       Returns an array containing all values in self/
# values_at:    Returns an array containing values for given keys.

# Methods for Assigning
# []=, store:       Associates a given key with a given value.
# merge:            Returns the hash formed by merging each given hash into a copy of self.
# merge!, update:   Merges each given hash into self.
# replace:          Replaces the entire contents of self with the contents of a given hash.

# Methods for Deleting
# These methods remove entries from self:
# clear:    Removes all entries from self.
# compact!: Removes all nil-valued entries from self.
# delete:   Removes the entry for a given key.
# delete_if: Removes entries selected by a given block.
# filter!, select!: Keep only those entries selected by a given block.
# keep_if:  Keep only those entries selected by a given block.
# reject!:  Removes entries selected by a given block.
# shift:    Removes and returns the first entry.

# These methods return a copy of self with some entries removed:
# compact:    Returns a copy of self with all nil-valued entries removed.
# except:     Returns a copy of self with entries removed for specified keys.
# filter, select: Returns a copy of self with only those entries selected by a given block.
# reject:     Returns a copy of self with entries removed as specified by a given block.
# slice:      Returns a hash containing the entries for given keys.

# Methods for Iterating
# each, each_pair: Calls a given block with each key-value pair.
# each_key:   Calls a given block with each key.
# each_value: Calls a given block with each value.

# Methods for Converting
# inspect, to_s: Returns a new String containing the hash entries.
# to_a:     Returns a new array of 2-element arrays; each nested array contains a key-value pair from self.
# to_h:     Returns self if a Hash; if a subclass of Hash, returns a Hash containing the entries from self.
# to_hash:  Returns self.
# to_proc:  Returns a proc that maps a given key to its value.

# Methods for Transforming Keys and Values
# transform_keys:     Returns a copy of self with modified keys.
# transform_keys!:    Modifies keys in self
# transform_values:   Returns a copy of self with modified values.
# transform_values!:  Modifies values in self.

# Other Methods
# flatten:  Returns an array that is a 1-dimensional flattening of self.
# invert:   Returns a hash with the each key-value pair inverted.
