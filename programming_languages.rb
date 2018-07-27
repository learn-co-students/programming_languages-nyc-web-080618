require 'pry'

def reformat_languages(languages)
  new_hash = {}

    languages.each do |lang_style, lang_details|
      #binding.pry
        lang_details.each do |lang_name, lang_type|
          #binding.pry
          new_hash[lang_name] ||= lang_type
          new_hash[lang_name][:style] ||= []
          new_hash[lang_name][:style] << lang_style
        end
    end
  new_hash
end
