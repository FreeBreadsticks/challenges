
#beep = ["dragon", "tiger", "lion", "unicorn"]
#puts "joined #{beep.join}"
#puts "shuffled #{beep.shuffle!}"
#puts "Some animals #{beep.sample(2)}"
#ani = beep.collect {|x| x + "!"}
#puts ani.join
#puts "collect #{beep.collect {|x| x + "!"}}"
#puts "collect #{beep}"

#beep.each do |animal|
 # puts "#{animal}"
#end

game = [[0,0,0,1,0],
        [1,0,0,0,0],
        [0,0,0,0,0]]
puts "#{game.index(1)}"

pnew = [1, 2, 3, 4, 5].map { |i| i + 1 }
puts pnew