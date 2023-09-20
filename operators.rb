#operators are just methods that have special syntax magic to make the easier to read

sum = a + b
#is really be translated to:
sum = a.+(b)

#so you can define operators for any class:
class Doc
  def +(other)
    Doc.new("#{content} #{other.content}")
  end
   
end


#operators avilable:
# Math:  + - * / %
# Logic: & | ^
# Unary: +@ -@
# <<
# []
