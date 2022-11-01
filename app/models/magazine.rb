require_relative '.article'
class Magazine
  attr_accessor :name, :category
  @all = []

  def initialize(name:, category:)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.filter{
      |article| article.magazine == self
    }
  end
  def title_articles
    self.articles.map{
      |article| article.title
    }
  end
  def contibutor
    self.articles.map{
      |article| article.author
    }.uniq
  end
  def author_contributing
    self.contibutor.filter{
      |author| author.articles.count>2
    }
  end
  def self.all
    @@all
  end
  def self.find_name(name:)
    self.all.find{
      |magazine| magazine.name == name
    }
  end
end

