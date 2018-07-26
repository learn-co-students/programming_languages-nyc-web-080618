require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |oofunc,lang_total|
    lang_total.each do |lang,val|
      val.each do |typ,str|
        if new_hash[lang] != nil
          new_hash[lang][:style] << oofunc
        else
          sty_le = []
          sty_le << oofunc
          new_hash[lang] = { typ => str, :style => sty_le }
        end
      end
    end
  end
  new_hash
end



#ofunc = :oo, lang = {....}
#typ = :ruby, val = {type => "interpreted"}
