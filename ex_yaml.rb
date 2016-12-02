require './person.rb'
require 'yaml'

class YAMLEx
	attr_accessor :fred, :laura, :test_data
	def create_data
		@fred = Person.new
		fred.name = "Fred Bloggs"
		fred.age = 45
		@laura = Person.new
		laura.name = "Laura Smithen"
		laura.age = 23
		@test_data = [ fred, laura ]
	end

	def convert_to_yaml
		puts test_data.to_yaml
	end

	def convert_back
		#yaml_string = test_data.to_yaml
		#or
		yaml_string = <<END_OF_DATA
---
- !ruby/object:Person
  age: 45
  name: Jimmy
- !ruby/object:Person
  age: 23
  name: Laura Smith
END_OF_DATA

		testy_data = YAML.load(yaml_string)
		puts testy_data[0].name
		puts testy_data[1].name
	end
end

ye = YAMLEx.new
#ye.create_data
#ye.convert_to_yaml
ye.convert_back