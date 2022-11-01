require_relative '.article'
class Author
  attr_accessor :name
  @all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def all_articles
    Article.all.filter {
      |article| article.author == self
    }
  end
  def add_new_article(magazine:,title:)
    Article.new(self,magazine,title)
  end
  def all_magazine
    self.articles.map {
      |article| article.magazine
    }.uniq
  end
  def magazine_category
    self.magazine.map{
      |magazine| magazine.category
    }.uniq
  end

  def self_all
    @@all
  end
end
