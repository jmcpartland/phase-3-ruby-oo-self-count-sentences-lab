require 'pry'

class String

  def sentence?
    self[-1..-1] == "."
  end

  def question?
    self[-1..-1] == "?"
  end

  def exclamation?
    self[-1..-1] == "!"
  end

  def count_sentences
    # self.split(" ").length
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end