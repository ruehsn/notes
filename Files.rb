#==============================================================================
# File /Driectory  stuff:
#==============================================================================

# make a directory:
require 'fileutils'
FileUtils.mkpath(dirname)


Dir.exist?(@local_dir) #check if Directory exisits
FileUtils.remove_dir(@local_dir) if Dir.exist?(@local_dir) #



#looping through a directory:
#-------------------------------------------
#skips the . and ..
Dir.each_child('/path/to/dir') do |filename|
  puts filename
end

Dir.foreach(path){|item|
  next if item == '.' or item == '..'
  parse_file( path +"\\"+item)
  }

  #specifying an extension:
  Dir.glob('C:/#Ruby/Run/Gems/*.gem'){|item|
    puts item
  }

  # recursively
  require "pathname"

  def rec_path(path, file= false)
    puts path
    path.children.collect do |child|
      if file and child.file?
        child
      elsif child.directory?
        rec_path(child, file) + [child]
      end
    end.select { |x| x }.flatten(1)
  end

#IO
#-------------------------------------------

#writing:
File.open("output.txt", "a") # append

File.open("output.txt", "w") do |file|
  file.puts "1 + 2 = #{1+2}"
end

# one line write to file
File.open(local_filename, 'w') {|f| f.write(string) }

#read- keep only the current line in memory
File.open("testfile") do |file|
  file.each_line {|line| puts "Got #{line.dump}" }
end

# these 2 methods are the same:
File.foreach("access_log") do |request|
  puts request
end

File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end

#Read file into an array of string:
File.readlines("filename")

#Reads just the first line:
puts File.open('somefile.txt', &:readline)

#read file into string:
contents = File.open('path-to-file.tar.gz', 'rb') { |f| f.read }
contents = IO.read(@document.path)

#temp File
file = Tempfile.new('foo')
file.write("hello world")
file.close
file.unlink    # deletes the temp file


#File System
#----------------------
File.rename(old_file, new_file)

file = "/path/to/xyz.mp4"

comp = File.basename file        # => "xyz.mp4"
extn = File.extname  file        # => ".mp4"
name = File.basename file, extn  # => "xyz"
path = File.dirname  file        # => "/path/to"
