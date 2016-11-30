require "spec_helper"

describe GTranslator do

  it "has a version number" do
    expect(GTranslator::VERSION).not_to be nil
  end

  it 'has a class named Translator' do
  	expect(GTranslator::Translator).not_to be nil
  end

  it 'returns a correct API KEY' do
  	tr = GTranslator::Translator.new(ENV['GOOGLE_API_KEY'],"en")
  	expect(tr.api_key).to eq("AIzaSyAypqBIxYn8_2dsA98MunNz0Lq5dfzlego") 	
  end

  it 'returns a correct JSON for a translation request' do
  	tr = GTranslator::Translator.new(ENV['GOOGLE_API_KEY'],"en")
  	expect(tr.translate("casa")).to eq({"data": {"translations": [ {"translatedText": "home","detectedSourceLanguage": "es" } ] } })
  end

end
