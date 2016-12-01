require "./file_reading.rb"

class CharacterSetsAndEncodings < FileReading
	def using_utf8
		File.new(file, "r:utf-8").each { |line| puts line }
	end

	def external_encoding_method
		p File.open(file, "r:iso-8859-1").external_encoding
		p File.open(file, "r").external_encoding
	end

	def transcoding
		File.open(file, "r:utf-8:iso-8859-1") do |f|
			p f.external_encoding
			first_line = f.gets
			p first_line.encoding
		end
	end
end
cs = CharacterSetsAndEncodings.new

cs.transcoding
#cs.external_encoding_method
#cs.using_utf8