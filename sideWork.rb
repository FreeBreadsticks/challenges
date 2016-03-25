class Image

  attr_accessor :img

  def initialize(img)
    self.img = img
  end

  def output_image
    #Array of X indices
    x_indices = []
    #Array of Y indices
    y_indices = []

    puts "Original Array"
    puts "--------------"

    #Print out the matrix before we 'blur'
    img.each_index do |f|
      puts "#{img[f].join}"
    end

    img.each_index do |i|
      img[i].each_index do |j|
        if img[i][j] == 1
          x_indices.push(i)
          y_indices.push(j)
        end
      end
    end

    x_indices.each_index do |i|
      if x_indices[i] > 0
        img[x_indices[i]-1][y_indices[i]] = 1
      end
      if x_indices[i] < img.length - 1
        img[x_indices[i]+1][y_indices[i]] = 1
      end
      if y_indices[i] > 0
        img[x_indices[i]][y_indices[i]-1] = 1
      end
      if y_indices[i] < img[i].length - 1
        img[x_indices[i]][y_indices[i]+1] = 1
      end
    end

    puts "Blurred Array"
    puts "--------------"

    #Print out the matrix before we 'blur'
    img.each_index do |f|
      puts "#{img[f].join}"
    end
  
  end

end


image = Image.new([
  [0, 0, 0, 0, 0, 0, 1, 0, 1, 0],
  [1, 0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0, 1, 0, 1]
])

image.output_image
