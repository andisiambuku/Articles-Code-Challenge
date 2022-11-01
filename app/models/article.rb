class Article

    attr_accessor :author, :magazine, :title
    @@all = []

    def initialize(author:,magazine:,title:)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    def article_title
        return
    end

    def all_articles
        return
    end

end
