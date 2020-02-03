require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences 
      delimiters = [".\s", "?\s", "!\s"]
      
      # sentence = self.split(/[.?!]\s/)
      sentence = self.split(Regexp.union(delimiters))
      sentence.count
      #binding.pry
  end
end