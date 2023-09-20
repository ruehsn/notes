require 'minitest/autorun'

assert
refute
assert_equal( @a.normalize_bank('136') , '136')
assert_block { ... }
assert_empty
assert_in_delta @size, 1, 1
assert_in_epsilon
assert_includes @list, "item"
assert_instance_of Array, @list
assert_kind_of Enumerable, @list
assert_match @str, /regex/
assert_nil
assert_operator @n, :==, 0
assert_output
assert_raises
assert_respond_to
assert_same
assert_send
assert_silent
assert_throws

#run a single test
#-------------------
ruby test_program.rb -n test_the_truth


#=========================
 require 'benchmark'
 puts Benchmark.measure { "a"*1_000_000_000 }
 #0.350000   0.400000   0.750000 (  0.835234)
 #====================================================================

 #quickly read some sample data as a Proof of Concept before building it out:
 DATA.each_line do |line|
  puts line
end


# https://devhints.io/minitest
