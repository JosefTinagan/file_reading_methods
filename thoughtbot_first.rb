$stdout.puts 'Hello World'
puts 'Hello World'

#$stdin.puts 'foo'
#$stdout.gets
#stderr.gets


#IO class
io = IO.new(1)
io.puts 'hello world'

fd = IO.sysopen('/dev/null', 'w+')

dev_null = IO.new(fd)
dev_null.puts 'hello'
dev_null.gets
dev_null.close

#Position
IO.sysopen '/Users/joseftinagan/Desktop/lorem.txt' #returns 8
lorem = IO.new(8) #returns #<IO:fd 8>
lorem.gets #returns "Lorem ipsum\n"
lorem.pos # returns 12
lorem.gets # returns "dolor\n"
lorem.gets #  returns "sit amet...\n"
lorem.pos # returns 30

lorem.gets #returns nil
lorem.eof? # returns true, eof = end of line?
lorem.rewind # returns 0, reset the position to zero
lorem.pos # returns 0

fd = IO.sysopen '/Users/joseftinagan/Desktop/test.txt' # returns 8
io = IO.new(fd) #returns <IO:fd 8>
io.puts 'hello world' # returns nil
io.puts 'gooodbye world' #returns nil
io.gets # returns nil
io.eof? #returns true

io.rewind # returns 0
io.gets #returns 'hello world\n'

io.pos # returns 12
io.puts "middle" #returns nil
io.rewind # returns 0
io.read #returns "hello world\nmiddle\n world\n"


#Sub-classes and Duck-types

#sockets
require 'socket' # returns true
socket = TCPSocket.new 'localhost', 3000 #returns #<TCPSocket:fd 10>
socket.puts 'GET "/"' # returns nil
socket.gets # returns "HTTP/1.1 400 Bad Request \r\n"

#StringIO
string_io = StringIO.new('hello world') # returns #<StringIO:0x007feab0cd4e8>
string_io.gets #returns "hello world"
string_io.puts 'goodby world' # returns nil
string_io.rewind # returns 0
string_io.read # returns "hello worldgoodby world\n"