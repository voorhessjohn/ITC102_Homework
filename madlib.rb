#This is a madlib program I wrote earlier this year, it 
#finds blanks pre-tagged with <> in the text and replaces them
#with user input, then prints the (hopefully hilarious!) result.

puts "Let's make a MadLib!"

#text of the MadLib, with "blanks" tagged with required part of speech
text = "Oh no! Your program, <proper noun>.exe isn't working! Never fear, here are six <adjective> steps to fix it!
    1. Have you tried turning it off and on again? 
    2. You aren't using Windows <verb> are you? Jeez, you should really switch to Google <verb>.
    3. Maybe you can figure it out on your own. Check to make sure you didn't leave out any important syntax, or mis-spell \"<noun>\" (for the tenth time today). 
    4. Can you rebrand the bugs as <adjective> features? No? Hm.
    5. Let's try using my favorite de-bugging tool, <noun>. Just type --<plural noun> to get it running, and ...
    Aha! You found it! Good job, you <adjective> <noun>, you. 
    6. Wait, what do you mean \"there are 27 new error messages now\"? Please refer to step one for further instructions."

#loads the word types needed to an array for prompting users later
tag_pattern = /<([^>]*)>/    
tags = text.scan(tag_pattern)

#for each tagged blank, get appropriate user input, then replace tagged blank with input.
tags.each do |type|
    print "#{type[0]}, please:"
    input = gets.chomp
    while input == ""
        print "Whoops! Try again:"
        input = gets.chomp
    end
    text.sub!(tag_pattern, input)
end

#print completed madlib! 
puts "\r\n Nice job! Here's your MadLib:" 
puts text
