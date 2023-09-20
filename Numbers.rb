#bigDecimal - can not have and characters besides . and numbers!!!
puts BigDecimal.new('36,987.95').to_s('F') #36.0
puts BigDecimal.new('987.95').to_s('F')    #987.95


var.to_f  #to float

float.round(num_dec_places)
