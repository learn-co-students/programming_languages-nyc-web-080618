require 'pry'

def reformat_languages(languages)
  my_new_hash = {}
  style_array = []
    languages.each do |variable1, variable2|
      style_array.push(variable1)
      variable2.each do |variable3, variable4|
        variable4.each do |variable5, variable6|
          my_new_hash = {
            variable3 => {
              variable5 => languages[variable1][variable3][variable5],
              :style => style_array
              }
            }
        end
      end
    end
    return my_new_hash
  end
