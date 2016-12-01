require "./file_reading.rb"
class FileOperations < FileReading
	def renaming_file
		f = File.new("rename_file.txt", "a")
		f.puts "REEEEEE"
		f.close
		File.rename("rename_file.txt", "rename_file2.txt")
	end

	def deleting_file
		File.delete("delete_one.txt") #or use .unlink
	end

	def creating_filenames
		f = File.join(File::SEPARATOR, 'full','path','here','filename.txt')
		puts f
	end

	def expand_filenames
		x = File.expand_path(file)
		puts x
	end

	def seeking_end
		f = File.open(file, "r+")
		f.seek(-5, IO::SEEK_END)
		f.putc "X"
		f.close
	end

	def print_every_fifth_char
		f = File.open("text.txt", "r")
		while a = f.getc
			puts a.chr
				f.seek(5, IO::SEEK_CUR)
		end
	end

	def when_file_is_modified
		t = File.mtime("text.txt")
		puts t

		puts t.hour
		puts t.min
		puts t.sec
	end

	def check_whether_file_exists
		puts "It exists!" if File.exist?("logfile.txt")
	end

	def check_size_of_file
		puts File.size("text.txt")
	end

	def check_if_end_of_file
		f = File.new("text.txt", "r")
		while !f.eof?
			puts f.gets
		end
		f.close
	end
end

fo = FileOperations.new

fo.check_if_end_of_file
#fo.check_size_of_file
#fo.check_whether_file_exists
#fo.when_file_is_modified
#fo.print_every_fifth_char
#fo.seeking_end
#fo.expand_filenames
#fo.creating_filenames
#fo.deleting_file
#fo.renaming_file