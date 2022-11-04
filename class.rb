class File
  attr_reader :batches, :modifer, :odfi
  
  #object created
  def initialize(starting_batch_counter:1, starting_detail_counter:1)
  	self.instance_variable_set("@#{key}".to_sym, value)
    #setting up the finalize method
    ObjectSpace.define_finalizer(self, method(:finalize))  
  end

  def finalize(object_id)
    p "finalizing %d" % object_id
  end


  
  #object equality
  def ==(other)
    self.name  == other.name &&
    self.price == other.price
  end
  
  # used for sorting
  def <=>(other)
    return -1 # self < other
    return  0 # self = other
    return  1 # self > other
  end
end

class Success
  def self.===(item)
    item.status >= 200 && item.status < 300
  end
end

class Empty
  def self.===(item)
    item.response_size == 0
  end
end

#optional keyword parameters with default value
def foo(str: "default value", num: 424242)
  puts str #default value
end

foo(str: 'buz', num: 9) foo(str: 'buz', num: 9) 

#determining object class type:
object.kind_of?(Array)
object.class