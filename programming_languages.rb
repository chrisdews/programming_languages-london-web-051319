require "pry"

def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, lang_hash|
		lang_hash.each do |lang_name, lang_type|
			if new_hash[lang_name] == nil
				new_hash[lang_name] = lang_type
				new_hash[lang_name][:style] = []
			end
			# this if checks if lang_name exists in new_hash. if it doesn't 
			# it creates lang_type and style keys for each lang_name
			new_hash[lang_name][:style] << style
			# then we can push the style to the empty array for each language
		end
	end
	new_hash
end
