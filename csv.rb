#CSV
require "csv"
#twin Bank  Company Name
#A    123   Flower Shop
CSV.foreach(file, col_sep: "\t", :headers => true, :header_converters => :symbol) do |row|
  puts row.field(:bank)
  puts row.field(:company_name)
end 

#looping through directory:
Dir.foreach(dir){|file|
  next if file == '.' or file == '..'  
}
