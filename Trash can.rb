newArray = []
i = 0
array_i = 0
while i < source.length do
  newArray << source[i][:movies]
#now what I need to do is to add the director name to the array of movies.
  while array_i < newArray.length do
  newArray[i][array_i][:director_name] = source[i][:name]
  array_i += 1
  end
  i += 1
end
newArray


newArray = []
i = 0
array_i = 0
while i < newArray.length do
  newArray << source[i][:name]
    while array_i < newArray.length do
      newArray[i][array_i] << source[i][:movies]
      array_i += 1
  end
  i += 1

end

newArray
