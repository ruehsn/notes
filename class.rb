class File
  @@class_variable = :value
  #careful!  class variable resolution can be yield some surprising differences when
  # Super/sub classes have the same class variable name so use cautiously
  extends ModuleName
  #all methods in this module become class methods

  #Class Method:
  def self.method_name
    #...
  end

  attr_reader :batches, :modifer, :odfi

  #object created
  def initialize(starting_batch_counter:1, starting_detail_counter:1)
  	self.instance_variable_set("@#{key}".to_sym, value)

    #setting up the finalize method
    ObjectSpace.define_finalizer(self, method(:finalize))

    #yield self back to allows Doc.new("Title", "Author"){|d| d.content << "blah blah"...}
    yield(self) if block_given?
  end

  def initialize(*args)    #converts all arguments into an array
    #File.new(:first_parm, :second_parm, :third)
    #args = [:first_parm, :second_parm, :third]
  end

  def initialize(**args)    #converts all arguments into a hash
    #File.new(file_size: "35MB", file_name:"report.txt")
    #args = {:file_size => "35MB", :file_name=>"report.txt"}
  end


  def finalize(object_id)
    p "finalizing %d" % object_id
  end

  #object equality

  def ==(other)
    return true if other.equal?(self)  # for performance improvements - checks same object ID
    self.name  == other.name && self.price == other.price
  end

  def ===(item)
    # used in case statements, most of the time you can leave it undefined and it will default to ==
    # but if you want regex like treatment, to have some sntax sugar to make case statements pretty
  end

  #create a key to lookup/sort item in Hash
  def hash
    odfi.hash ^ trace_num.hash
  end

  def eql?(other)
    #used in hashes for lookup
    #not sure why this isn't the default:
    hash.eql?(other.hash)
  end

  #if you define this block you can include the Enumerable module
  include Enumerable
  def each(block)
    words.each{|word| yeild(word)}
  end

  # used for sorting
  def <=>(other)
    return -1 # self < other
    return  0 # self = other
    return  1 # self > other
  end

  #this is class method, can't be called by instance objects of the class
  def self.new_file()
    #...
  end

  #all methods after this are not only visible with class, not individual objects
  # subclasses also can view private methods
  private
  def count_green_items; end

  object.count_green_items()      # does NOT work
  object.sent(:count_green_items) # does work, but use with caution!
end

#singleton methods: are methods that only exist for 1 object, (not all classes)
# they can override exiting methods
#often used for alternative ways of creating new instances of an object since we only get 1 new method... aka
Date.ordinal(2010, 359)
Date.civl(2010,12,25)

# class methods are form of signleton methods
d = Doc.new()
def d.increase_count(incr)
  #...
end

#optional keyword parameters with default value
def foo(str: "default value", num: 424242)
  puts str #default value
end

foo(str: 'buz', num: 9) foo(str: 'buz', num: 9)

#determining object class type:
object.kind_of?(Array)  object.is_a?(Array)
object.class

#operation
first_operand.method(operation).call(second_operand)


#Never write a .equal?() method - this reserver method to determine if 2 object share the same object_id

#careful direction matters if comparing 2 differnt objects (if the both == are note implement in the same way)
a = Apple.new
b = Banana.new
a == b # can be true
b == a # can also be false!
