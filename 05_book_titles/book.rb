class Book
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def title
    words = @title.split.map do |word|
      (%w(the in of an a over).include?(word)) ? word : word.capitalize
    end
    words[0] = words.first.capitalize
  end
end
