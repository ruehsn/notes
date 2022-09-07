#Unit Testing
#===============================================================================
require 'minitest/autorun'
assert_equal( @a.normalize_bank('136') , '136')


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
