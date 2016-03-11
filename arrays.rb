#values = Array[[10,20,30], [40,50,60]]

#values.each do |x|
#  x.each do |cell|
#    puts cell
#  end

#  puts "--"
#end

#values = []

#subarray = []
#subarray.push(1)
#subarray.push(2)
#subarray.push(3)

#values.push(subarray)

#subarray = []
#subarray.push(10)
#subarray.push(20)
#subarray.push(30)

#values.push(subarray)

#puts "Third element in first row is:" << String(values[0][2])

#values[1][1] = 500

#values.each do |x|
#  x.each do |y|
#    puts y
#  end
#  puts "--"
#end

#values = [["A", "B", "C"], ["D", "E", "F"], ["G", "H"]]

#values.each_index do |i|

 # subarray = values[i]
  #  subarray.each_index do |x|
   #   puts String(i) << " " << String(x) << "... " << values[i][x]
    #end
  #end


  gems = [["ruby", 10], ["sapphire", 20]]
  p gems

  gems.flatten!
  p gems

