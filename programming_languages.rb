require 'pry'



def reformat_languages(languages_hash)
  my_new_hash = {}
  style_array = []
    languages_hash.each do |oo_or_functional, languages|
      #style_array.push(variable1)
      languages.each do |language_name, type|
        style_array.push(oo_or_functional)
        type.each do |type_key, compiled|

          if my_new_hash[language_name]
            style_array = my_new_hash[language_name][:style].push(oo_or_functional)
            #style_array.push(oo_or_functional])
          else
            my_new_hash[language_name] = {type: languages_hash[oo_or_functional][language_name][type_key]}
            my_new_hash[language_name][:style] = [oo_or_functional]
          end
        end
      end
    end
  #  binding.pry
    return my_new_hash
  end


  #  my_new_hash = {
  #    variable3 => {
  #      variable5 => languages[variable1][variable3][variable5],
  #      :style => style_array
  #      }
  #    }
