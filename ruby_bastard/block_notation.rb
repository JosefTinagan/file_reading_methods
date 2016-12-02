=begin
#instead of
somefile = File.open("sample.txt", "w")
somefile.puts "Hello file!"
somefile.close
=end

File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}