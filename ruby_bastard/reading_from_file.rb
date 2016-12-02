=begin
file = File.open("sample.txt", "r")
contents = file.read
puts contents   #=> Lorem ipsum etc.

contents = file.read
puts contents   #=> ""
=end

#or
#block notation

contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents