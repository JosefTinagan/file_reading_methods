# count the files in my Downloads directory:
puts Dir.pwd
puts Dir.home
puts Dir.pwd

puts Dir.glob('#{Dir.home}/Document').length   #=> 382

# count all files in my Downloads directory and in sub-directories
puts Dir.glob('Downloads/**/*').length   #=> 308858

# list just PDF files, either with .pdf or .PDF extensions:
puts Dir.glob('Downloads/*.{pdf,PDF}').join(",\n")