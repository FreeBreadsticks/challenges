class Image

  attr_accessor :img

  def initialize(img)
    self.img = img
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
  [1, 0, 1, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1]
])

image.output_image