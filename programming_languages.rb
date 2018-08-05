def reformat_languages(languages)
  new_hash = {}
  languages.each do |x,y|
    y.each do |lang_x,lang_y|
      if new_hash.has_key?(lang_x)
      else
        new_hash[lang_x] = lang_y
      end
      if new_hash[lang_x].has_key?(:style)
        new_hash[lang_x][:style] << x
      else
        new_hash[lang_x][:style] = [x]
      end
    end
  end
  new_hash
end
