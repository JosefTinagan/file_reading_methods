lines = ["Hello world", "  How are you?", "*Fine*, thank you!.", "  OK then."]   
lines.each do |line|
   puts line if line.match(/^  [A-Z]/)
end

if "Honey Ham is my favorite".match("Ham.")
   puts "Hey, I just wanted to match 'Ham.' Ham with a dot!"
end
#=> Hey, I just wanted to match 'Ham.' Ham with a dot!