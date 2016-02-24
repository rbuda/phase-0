# hash = Hash.new

# %w(cat dog wombat).each_with_index { |item, index| 
#   hash[item] = index
# }

# puts hash


def where_am_i(list, item)
  list.each_with_index {|item| return index if item == item}
end

where_am_i("cat", "item")