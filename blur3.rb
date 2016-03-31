class Image

  attr_accessor :img

  def initialize(img)
    self.img = img

  end

  def blur(distance)
    count = distance
    oneset = []
    twoset = []

   img.each_index do |x|
     subarray = img[x]
      subarray.each_index do |y|
       if img[x][y] == 1
         # puts img[x][y]
         oneset << x
         twoset << y
       end
      end
    end

   while count > 0 do
     num = 0
     oneset.each_index do |i|
       puts count
     # puts img[oneset[i]].length
     # puts twoset[i]
      if (oneset[i]-count) >= 0 && oneset[i] != 0
       img[oneset[i]-count][twoset[i]] = 1
      end
      if (twoset[i]-count) >= 0 && twoset[i] != 0
       img[oneset[i]][twoset[i]-count] = 1
      end
      # if oneset[i] < (img.length - 1) && (oneset[i] + count) >= (img.length - 1)
      #   while count >= num
      #     img[oneset[i]+num][twoset[i]] = 1
      #     num = num + 1
      #   end
      # end
      # if twoset[i] < (img[oneset[i]].length - 1) && (twoset[i] + count) >= (img[oneset[i]].length - 1)
      #   while count >= num
      #     img[oneset[i]][twoset[i]+num] = 1
      #     num = num + 1
      #   end
      # end
     count = count - 1


    end
   end

   img.each_index do |f|
     puts "#{img[f].join}"
     # puts "#{oneset}"
     # puts "#{twoset}"
   end
  end

  def output_image
     oneset = []
     twoset = []

    img.each_index do |x|
      subarray = img[x]
      subarray.each_index do |y|
        if img[x][y] == 1
          # puts img[x][y]
          oneset << x
          twoset << y
        end
      end
    end

    oneset.each_index do |i|
      # puts img[oneset[i]].length
      # puts twoset[i]
      if oneset[i] != 0
        img[oneset[i]-1][twoset[i]] = 1
      end
      if twoset[i] != 0
        img[oneset[i]][twoset[i]-1] = 1
      end
      if oneset[i] < (img.length - 1)
        img[oneset[i]+1][twoset[i]] = 1
       end
       if twoset[i] < (img[oneset[i]].length - 1)
        img[oneset[i]][twoset[i]+1] = 1
      end
    end

    img.each_index do |f|
      puts "#{img[f].join}"
      # puts "#{oneset}"
      # puts "#{twoset}"
    end
  end



end

image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])

image.blur(3)
