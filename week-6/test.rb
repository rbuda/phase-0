# class Item
#   def initialize(item_name, quantity)
#     @item_name = item_name
#     @quantity = quantity
#   end
  
#   def show
#     puts @item_name
#     puts @quantity
#   end
# end

# Item.new("tv",1).show
# Item.new("fridge",1).show


array = [1,2,3,4,5,6,7,8,9,10]

test = []
test = array.each { |x| print x += 2 }
puts test