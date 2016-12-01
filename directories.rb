require 'tmpdir'
require 'tempfile'

class Directories
	def navigate_through
		puts Dir.pwd
		Dir.chdir("/usr/bin")
		puts Dir.pwd
	end

	def list_of_files
		puts Dir.entries("/usr/bin").join(' ')
	end

	def list_of_files_with_foreach
		Dir.foreach("/usr/bin") do |entry|
			puts entry
		end
	end

	def list_of_files_with_array_method
		x = Dir["/usr/bin/*"]
		puts x.inspect
	end

	def create_directory
		Dir.mkdir("mynewdir")
		#or absolutepaths
		#Dir.mkdir("c:\test")
	end

	def delete_directory
		Dir.delete("mynewdir")
		#dir.unlink and Dir.mdir perform exactly the same
	end

	def file_utils_rm_f
		#require 'fileutils'
		#FileUtils.rm_f(directory_name)
	end

	def using_tmpdir
		#require 'tmpdir'
		puts Dir.tmpdir

		tempfilename = File.join(Dir.tmpdir, "myapp.dat")
		tempfile = File.new(tempfilename, "w")
		tempfile.puts "This is only temporaray"
		tempfile.close
		File.delete(tempfilename)
	end

	def using_tempfile_library
		#require 'tempfile'
		f = Tempfile.new('myapp')
		f.puts "Hello"
		puts f.path
		f.close
	end

end

di = Directories.new

#di.using_tmpdir
#di.delete_directory
#di.create_directory
#di.list_of_files_with_array_method
#di.list_of_files_with_foreach
#di.list_of_files
#di.navigate_through