require "gtranslator/version"

require "httparty"
require "json"

module GTranslator

  class Translator

  	def initialize(key,lang)
  	  set_api_key(key)
  	  set_target_language(lang)
  	end

  	def set_api_key(key)
  	  @api_key = key
  	end  	

  	def api_key
  	  @api_key
  	end

  	def set_target_language(lang)
  	  @target_language = lang
  	end

  	def translate(str)
  	  @str = str
  	  JSON.load(HTTParty.get(url))
  	end

  	def modified_str
  	  @str.gsub(" ","+")
  	end

  	def url
  	  "https://www.googleapis.com/language/translate/v2?q=#{modified_str}&target=he&key=#{api_key}"
  	end

  end 

end
