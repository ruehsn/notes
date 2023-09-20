class DocumentReader                               ##(doc
  class << self
    attr_reader :reader_classes
  end
  @reader_classes = []

  def self.read(path)
    reader = reader_for(path)
    return nil unless reader
    reader.read(path)
  end

  def self.reader_for(path)
    reader_class = DocumentReader.reader_classes.find do |klass|
      klass.can_read?(path)
    end
    return reader_class.new(path) if reader_class
    nil
  end

  def self.inherited(subclass)
    #automatically keeps track of all sub classe as soon as they are delcared!
    DocumentReader.reader_classes << subclass
  end
end

class PlainTextReader < DocumentReader
  def self.can_read?(path);    /.*\.txt/ =~ path; end  #...
end

class XMLReader < DocumentReader
  def self.can_read?(path);    /.*\.xml/ =~ path;  end  #...
end

class YAMLReader < DocumentReader
  def self.can_read?(path);    /.*\.yaml/ =~ path;  end;  #...
end

module SomeHelpers
  def self.included(host_class)
    #this is called everytime a module is included into a class
    host_class.extend(ClassMethod) #... some automatically include/extending module... don't quite understand
  end
end

#method Missing
class DocumentReader
  #...
  def method_missing(method_name, *args)
    #add additional logging...

    super #calls the original default method missing, raise an error
  end

  def self.const_missing(const_name)
    #must be class method (aka self.const_missing)
  end
end
