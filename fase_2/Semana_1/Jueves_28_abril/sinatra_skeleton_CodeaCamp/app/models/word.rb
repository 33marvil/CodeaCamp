class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.canonical(word)
    word.downcase.chars.sort.join.strip
  end

  def self.find_word(word)
    word_canonical = canonical(word)
    self.where(canonical: word_canonical)
  end

end
