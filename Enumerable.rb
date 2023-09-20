# https://ruby-doc.org/3.2.2/Enumerable.html

# Methods for Querying - These methods return information about the Enumerable other than the elements themselves:
# include?, member?: Returns true if self == object, false otherwise.
# all?:              Returns true if all elements meet a specified criterion; false otherwise.
# any?:              Returns true if any element meets a specified criterion; false otherwise.
# none?:             Returns true if no element meets a specified criterion; false otherwise.
# one?:              Returns true if exactly one element meets a specified criterion; false otherwise.
# count:             Returns the count of elements, based on an argument or block criterion, if given.
# tally:             Returns a new Hash containing the counts of occurrences of each element.

# Methods for Fetching - These methods return entries from the Enumerable, without modifying it:
# entries, to_a: Returns all elements.
# first:         Returns the first element or leading elements.
# take:          Returns a specified number of leading elements.
# drop:          Returns a specified number of trailing elements.
# take_while:    Returns leading elements as specified by the given block.
# drop_while:    Returns trailing elements as specified by the given block.

# Minimum and maximum value elements:
# min:          Returns the elements whose values are smallest among the elements, as determined by <=> or a given block.
# max:          Returns the elements whose values are largest among the elements, as determined by <=> or a given block.
# minmax:       Returns a 2-element Array containing the smallest and largest elements.
# min_by:       Returns the smallest element, as determined by the given block.
# max_by:       Returns the largest element, as determined by the given block.
# minmax_by:    Returns the smallest and largest elements, as determined by the given block.

# Groups, slices, and partitions:
# group_by:     Returns a Hash that partitions the elements into groups.
# partition:    Returns elements partitioned into two new Arrays, as determined by the given block.
# slice_after:  Returns a new Enumerator whose entries are a partition of self, based either on a given object or a given block.
# slice_before: Returns a new Enumerator whose entries are a partition of self, based either on a given object or a given block.
# slice_when:   Returns a new Enumerator whose entries are a partition of self based on the given block.
# chunk:        Returns elements organized into chunks as specified by the given block.
# chunk_while:  Returns elements organized into chunks as specified by the given block.

# Methods for Searching and Filtering - These methods return elements that meet a specified criterion:
# find, detect:              Returns the 1st element selected by the block.
# find_all, filter, select:  Returns elements selected by the block.
# find_index:                Returns the index of an element selected by a given object or block.
# reject:                    Returns elements not rejected by the block.
# uniq:                      Returns elements that are not duplicates.

# Methods for Sorting -These methods return elements in sorted order:
# sort:    Returns the elements, sorted by <=> or the given block.
# sort_by: Returns the elements, sorted by the given block.

# Methods for Iterating
# each_entry:         Calls the block with each successive element (slightly different from each).
# each_with_index:    Calls the block with each successive element and its index.
# each_with_object:   Calls the block with each successive element and a given object.
# each_slice:         Calls the block with successive non-overlapping slices.
# each_cons:          Calls the block with successive overlapping slices. (different from each_slice).
# reverse_each:       Calls the block with each successive element, in reverse order.

# Other Methods
# map, collect:              Returns objects returned by the block.
# filter_map:                Returns truthy objects returned by the block.
# flat_map, collect_concat:  Returns flattened objects returned by the block.
# grep:                      Returns elements selected by a given object or objects returned by a given block.
# grep_v:                    Returns elements selected by a given object or objects returned by a given block.
# reduce, inject:            Returns the object formed by combining all elements.
# sum:                       Returns the sum of the elements, using method +.
# zip:                       Combines each element with elements from other enumerables; returns the n-tuples or calls the block with each.
# cycle:                     Calls the block with each element, cycling repeatedly.
