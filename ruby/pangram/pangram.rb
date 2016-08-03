class Pangram
  
  def self.is_pangram?(str)
    abc = {}
    ('a'..'z').to_a.each {|x| abc[x] = 0 }
    false if str.empty?
    str.downcase.tr('^a-z', '').split("").each {|x| abc[x] += 1 }
    abc.values.any? {|v| v == 0} ? false : true
  end
end
