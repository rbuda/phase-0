house = {
  "living room" => ["sofa", "chandelier"],
  "kitchen" => ["table", "refrigerator"],
  "Attic" => []
}

puts house["kitchen"][1]

house["Attic"].push("ghost")

house["living room"].push("cat")
house["living room"][2] = "dog"

puts house

Use ARRAY METHODS to call on kitchen & living room
Use STRING METHODS to call on sofa, chandelier, table, refrigerator