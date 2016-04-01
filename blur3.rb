class Image

  attr_accessor :img

  def initialize(img)
    self.img = img

  end

  def blur(distance)
    count = distance
    coords = []

    while count > 0 do

      img.each_index do |y|
        row = img[y]
        row.each_index do |x|
          coords << [y, x] if img[y][x] == 1
        end
      end

      coords.each do |c|
        y = c[0]
        x = c[1]
        img[y][x-1] = 1 if x >= 0
        img[y][x+1] = 1 if x < img[0].length - 1
        img[y-1][x] = 1 if y >= 0
        img[y+1][x] = 1 if y < img.length - 1
      end

      count = count - 1

    end

    # while count > 0 do
    # num = 0
    # coords.each_index do |i|
    # puts count
    # # puts img[coords[i]].length
    # # puts twoset[i]
    # if (coords[i]-count) >= 0 && coords[i] != 0
    # img[coords[i]-count][twoset[i]] = 1
    # end
    # if (twoset[i]-count) >= 0 && twoset[i] != 0
    # img[coords[i]][twoset[i]-count] = 1
    # end
    # if coords[i] < (img.length - 1) && (coords[i] + count) <= (img.length - 1)
    # while num <= distance
    #   #img[coords[i]+num][twoset[i]] = 1
    #   num = num + 1
    # end
    # end
    #
    # count = count - 1
    # end
    # end

   img.each_index do |f|
     puts "#{img[f].join}"
     # puts "#{coords}"
     # puts "#{twoset}"
   end
  end

  # def output_image
  #    coords = []
  #    twoset = []
  #
  #   img.each_index do |x|
  #     subarray = img[x]
  #     subarray.each_index do |y|
  #       if img[x][y] == 1
  #         # puts img[x][y]
  #         coords << x
  #         twoset << y
  #       end
  #     end
  #   end
  #
  #   coords.each_index do |i|
  #     # puts img[coords[i]].length
  #     # puts twoset[i]
  #     if coords[i] != 0
  #       img[coords[i]-1][twoset[i]] = 1
  #     end
  #     if twoset[i] != 0
  #       img[coords[i]][twoset[i]-1] = 1
  #     end
  #     if coords[i] < (img.length - 1)
  #       img[coords[i]+1][twoset[i]] = 1
  #      end
  #      if twoset[i] < (img[coords[i]].length - 1)
  #       img[coords[i]][twoset[i]+1] = 1
  #     end
  #   end

  #   img.each_index do |f|
  #     puts "#{img[f].join}"
  #     # puts "#{coords}"
  #     # puts "#{twoset}"
  #   end
  # end



end
# if twoset[i] < (img[coords[i]].length - 1) && (twoset[i] + count) >= (img[coords[i]].length - 1)
#   while count >= num
#     img[coords[i]][twoset[i]+num] = 1
#     num = num + 1
#   end
# end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
])

image.blur(2)
