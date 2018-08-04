languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}


def reformat_languages(languages)
  # your code here
   new_hash = {}
   arr = []
  languages.each do |key, value|
     style = key
     arr << style
     value.each do |key, value|
       new_hash[key] = value
       new_hash[key][:style] = [style]
       if key == :javascript
         new_hash[key][:style] = arr
       end
      end
    end
  new_hash
end

p reformat_languages(languages)
