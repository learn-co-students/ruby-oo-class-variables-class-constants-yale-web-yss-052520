class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    self.brand = brand #self keyword to call brand= on this instance of Shoe
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(new_brand)
    @brand = new_brand
    # Want to make sure BRANDS only contains unique values
    BRANDS.include?(new_brand) ? BRANDS : BRANDS << new_brand
  end   

end