require 'csv'
class CommaSeparatedValues
	attr_reader :file
	def initialize(file="text.txt")
		@file = file
	end

	def using_csv
		CSV.open(file).each do |person|
		  p person
		end
	end

	def using_csv_parse
		people = CSV.parse(File.read('text.txt'))
		puts people[0][0]
		puts people[1][0]
		puts people[2][0]
	end

	def using_csv_read
		p CSV.read('text.txt')
	end

	def using_csv_find
		people = CSV.read('text.txt')
		laura = people.find { |person| person[0] =~ /Laura/ }
		p laura
	end

	def using_csv_find_all
		people = CSV.read(file)
		young_people = people.find_all do |p|
		  p[3].to_i.between?(20, 40)
		end
		p young_people
	end

	def csv_saving
		people = CSV.read('text.txt')
		laura = people.find { |person| person[0] =~ /Laura/ }
		laura[0] = "Lauren Smith"
		CSV.open('text.txt', 'w') do |csv|
		  people.each do |person|
		    csv << person
		  end
		end
	end
end

csv = CommaSeparatedValues.new

csv.csv_saving
#csv.using_csv_find_all
#csv.using_csv_find
#csv.using_csv_read
#csv.using_csv_parse
#csv.using_csv