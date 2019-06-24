class PigLatinizer
  attr_accessor :text

  def piglatinize (input)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    arr= input.split(' ')
    arr.each do |str|
      if vowels.include?(str[0])
        str + 'way'
      elsif consonants.include?(str[0]) && consonants.include?(str[1])
        str[2..-1] + str[0..1] + 'ay'
      elsif consonants.include?(str[0])
        str[1..-1] + str[0] + 'ay'
      else
        str # return unchanged
      end
    end
  end
end
