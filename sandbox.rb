def polybius(text)
  array = ('A'..'I').to_a + ('K'..'Z').to_a
  text_ary = text.upcase.chars
  answer = []
  hash = {}
  for i in 1..5
    hash[i] = [0] + array.shift(5)
  end #generate a hash where each key is 1-5 which contains an array of 5 letters each.
  text_ary.each do |character|
    if character == " "
      answer << " "
    elsif character == "J"
      answer << "24"
    else
      hash.each do |key, array|
        if array.include?(character.upcase)
          answer << "#{key}#{array.find_index(character)}"
        end
      end #end of hash iteration
    end #end of if/else
  end #end of text_ary iteration
    answer = answer.join("")
end
