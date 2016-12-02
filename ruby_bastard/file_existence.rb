if File.exists?("hamlet.txt")
   puts "hamlet.txt exists"
end
   
#or check direcotroes

dirname = "data-files"
Dir.mkdir(dirname) unless File.exists?dirname
File.open("#{dirname}/new-file.txt", 'w'){|f| f.write('Hello world!')}      