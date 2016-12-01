require "spec_helper"

describe BTranslator do

  it "has a version number" do
    expect(BTranslator::VERSION).not_to be nil
  end

  it 'has a class named Translator' do
  	expect(BTranslator::Translator).not_to be nil
  end

  it 'returns a correct JSON for a translation request' do
  	tr = BTranslator::Translator.new(ENV['GOOGLE_API_KEY'],"en")
  	expect(tr.translate("casa")).to eq({"data": {"translations": [ {"translatedText": "home","detectedSourceLanguage": "es" } ] } })
  end

end
