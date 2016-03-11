class Image

  attr_accessor :img

  def initialize(img)
    self.img = img
  end

  def output_image
    img.each_index do |i| 
      puts "#{img[i].join}"
    end
    #row1 = img[0]
    #row2 = img[1]
    #row3 = img[2]
    #row4 = img[3]
    #puts "#{row1.join}"
    #puts "#{row2.join}"
    #puts "#{row3.join}"
    #puts "#{row4.join}"
    end

  end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

