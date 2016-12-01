class FileReading
	attr_reader :file
	def initialize(file_to_open="text.txt")
		@file = file_to_open;
	end

	def use_each
		puts "#each technique"
		File.open(file).each { |line| puts line }
	end

	def use_custom_delimiter
		puts "Using a custom delimiter"
		File.open(file).each(',') { |line| puts line }
	end

	def use_each_byte
		puts "#each_byte technique"
		File.open(file).each_byte { |byte| puts byte }
	end

	def use_each_char
		puts "#each_char technique"
		File.open(file).each_char { |byte| puts byte}
	end

	def use_gets
		puts "gets technique"
		File.open(file) do |f|
			2.times { puts f.gets }
		end
	end

	def use_gets_custom
		puts "gets technique w/ custom delimeter"
		File.open(file) do |f|
			2.times { puts f.gets(',')}
		end
	end

	def use_getc
		puts "getc technique"
		File.open(file) do |f|
			2.times { puts f.getc }
		end
	end

	def use_readlines
		puts "readlines techinque"
		puts File.open(file).readlines.join("--")
	end

	def use_read
		puts "read technique"
		File.open(file) do |f|
			puts f.read(6)
		end
	end

	def use_shortcut_read
		puts "shortcut read technique"
		data = File.read(file)
		puts data
	end

	def use_shortcut_readlines
		puts "shortcut readlines technique"
		array_of_lines = File.readlines(file)
		puts array_of_lines
	end

	def position_within_a_file
		f = File.open("text.txt")
		puts f.pos 
		puts f.gets
		puts f.pos
	end

	def setting_position
		f = File.open("text.txt")
		f.pos = 8
		puts f.gets
		puts f.pos
	end

	def writing_to_files
		File.open("text_new.txt", "w") do |f|
			f.puts "This is a test"
		end
	end

	def appending_to_files
		f = File.new("logfile.txt", "a")
		f.puts Time.now
		f.close
	end

	def read_and_write_to_files
		f = File.open("somedata.txt", "r+")
		puts f.gets
		f.puts "This is a test"
		puts f.gets
		f.close
	end

	def use_putc
		f = File.open("somedata.txt", "r+")
		f.putc "X"
		f.close
	end

	def use_write
		f = File.open("somedata.txt", "r+")
		f.write "123456"
		f.close
	end
end
fr = FileReading.new

#fr.use_write
#fr.use_putc
#fr.read_and_write_to_files
#fr.appending_to_files
#fr.writing_to_files
#fr.setting_position
#fr.use_each
#fr.use_custom_delimiter
#fr.use_each_byte
#fr.use_each_char
#fr.use_gets
#fr.use_gets_custom
#fr.use_getc
#fr.use_readlines
#fr.use_read
#fr.use_shortcut_read
#fr.use_shortcut_readlines
#fr.position_within_a_file