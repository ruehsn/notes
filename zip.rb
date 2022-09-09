require 'zip'
# https://gist.github.com/dharshan/262a93f8306712a38dd99575ed8fd094

# zip a folder with only files (NO SUB FOLDERS)
Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  Dir[File.join(input_directory, '*')].each do |file|
    zipfile.add(file.sub(input_directory, ''), file)
  end
end

# zip a folder with files and subfolders
def zip_folder(input_directory, zipfile_name)
  Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
    Dir["#{input_directory}/**/**"].each do |file|
      zipfile.add(file.sub(input_directory + '/', ''), file)
    end
  end
end

#unzip
def unzip(file, unzip_path)
  Zip::File.open(file) do |zip_file|
   zip_file.each do |entry|
     full_path = unzip_path+'\\'+entry.name.to_s
     puts "Extracting #{full_path}"
     entry.extract(full_path)
   end
  end
 end