# the hashe (key-value) is the index with your created name
/
    v = [15, "Isaac", 2003, "Admin"] -- normal array
         0      1       2       3

    H = [15, "Isaac",  2003,  false] -- Hashe
         id    name    birth  admin
/

# HASHE sintax

# traditinal
h = { "id" => 1, "name" => "Isaac", "birth" => 2003, "admin" => false }
# to access the elements
puts h["birth"]

# 1.9+
h = { "id": 1, "name": "Isaac", "birth": 2003, "admin": false }
# to access the elements
puts h[:name] # Hashe
/ with new sintax, is necessary use : /