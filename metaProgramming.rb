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

    # using as deligation:
    run_this_code_for_every_method()
    @orginal_doc.send(method_name. *args)
    super #calls the original default method missing, raise an error
  end

  #flexible API aka "magic methods"
  def method_missing(method_name, *args)
    string_name = method_name.to_s
    return super unless string_name =~ /^replace_\w+/  #searches method name follows pattern
    #call a method using method name as parmeter
    replace_word(method_name)
  end
  def self.const_missing(const_name)
    #must be class method (aka self.const_missing)
  end
end

# delegates all methods...
require 'delegate'
class DocWrap < SimpleDelegator #special class we get from delegate require statement
  def initialize(real_doc)
    super(real_doc)
  end
end

#monkey patching- with persevering the original method
class String
  alias_method :old_addition, :+ #save the original method

  def +(other)
    if other.kind_of?(Document)
      new_content = self + other.content
      return Document.new(other.title, other.author, new_content)
    end
    old_addition(other) # call the original method
  end

#conditionally define a method
# makes the method more readable and easier to delete when you want to drop compatibility
if RUBY_VERSION < "1.9"
  def char_at(position)
    @content[position]
  end
else
  def char_at(position)
    @content[index].chr
  end
end


#class_eval    - interperates a string as and treats it like ruby code
#instance_eval - interperates a string as and treats it like ruby code
code = %q{
  def #{paragraph_name}(text)
    p = Paragraph.new(:#{name}, #{size}, :#{emphasis})
    self << p
  end
}
  class_eval(code) #evaluates the string as ruby code
end

#define_method - defines a method on a class
class StructuredDocument
  def self.paragraph(name, size, emphasis)
    define_method(name) do |text|
      p = Paragraph.new(name, size, emphasis)
      self << p
    end
  end
end

#class_eval    - interperates a string as and treats it like ruby code
#instance_eval - interperates a string as and treats it like ruby code
#module_eval
code = %q{
  def #{paragraph_name}(text)
    p = Paragraph.new(:#{name}, #{size}, :#{emphasis})
    self << p
  end
}
  class_eval(code) #evaluates the string as ruby code
end

#define_method - defines a method on a class
class StructuredDocument
  def self.paragraph(name, size, emphasis)
    define_method(name) do |text|
      p = Paragraph.new(name, size, emphasis, text)
      self << p
    end
  end
end

# Forwardable - delegates methods to another object
require 'forwardable'
class DocumentWrapper
  extend Forwardable

  #delegates the following methods to the @real_doc object:
  def_delegators :@real_doc, :content, :words, :word_count

  def initialize(real_doc)
    @real_doc = real_doc
  end
end
