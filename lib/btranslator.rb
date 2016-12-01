require "btranslator/version"

require "httparty"
require "addressable"

module BTranslator

  class Translator

  	def initialize(olang,tlang)
      set_original_language(olang)
  	  set_target_language(tlang)
  	end

    def set_original_language(lang)
      @original_language = lang
    end

    def original_language
      @original_language
    end

  	def set_target_language(lang)
  	  @target_language = lang
  	end

    def target_language
      @target_language
    end

  	def translate(str)
  	  @str = str
      puts url
  	  HTTParty.get(url)
  	end

  	def modified_str
  	  @str.gsub(" ","%20")
  	end

  	def url
      "http://www.bing.com/translator/api/Dictionary/Lookup?from=#{original_language}&to=#{target_language}&text=#{modified_str}"
  	end

  end 

end
