def with_logging(desc)
  begin
    @logger.debug("start #{desc}")
    return_value = yield  #this is where the code is excuted
    @logger.debug("end   #{desc}")
    return return_value
  rescue
    @logger.error("error #{desc}!!")
    raise
  end
end

with_logging("update retired") do
  employee.load
  employee.status = :retired
  employee.save
end


# waits until someone actually calls the content method before firing off the block
class BlockBasedArchivalDocument
  attr_reader :title, :author

  def initialize(title, author, &block)
    @title = title
    @author = author
    @initializer_block = block
  end

  def content
    if @initializer_block
      @content = @initializer_block.call
      @initializer_block = nil
    end
    @content
  end
end

file_doc = BlockBasedArchivalDocument.new('Title', 'russ'){File.read('path.txt')}
http_doc = BlockBasedArchivalDocument.new('Title', 'russ'){Net::HTTP.get_response('www.url.com').body}

#use **Lambda** to define a block within a class, method, etc. where you don't have opportunity to pass it
#in as a parameter
DEFAULT_SAVE_LISTENER = lambda do |doc, path|
  puts "Saved: #{path}"
end
