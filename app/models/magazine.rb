require_relative '.article'
class Magazine
  attr_accessor :name, :category
  @all = []

  def initialize(name:, category:)
    @name = name
    @category = category
    @@all << self
  end
  
  # def magazine_name
  #   return
  # end

  # def magazine_category
  #   return
  # end

  # def all_magazine
  #   return
  # end
end

