require "./file_reading.rb"

class CharacterSetsAndEncodings < FileReading
	def using_utf8
		File.new(file, "r:utf-8").each { |line| puts line }
	end

	def external_encoding_method
		p File.open(file, "r:iso-8859-1").external_encoding
		p File.open(file, "r").external_encoding
	end
end
cs = CharacterSetsAndEncodings.new

#cs.external_encoding_method
#cs.using_utf8