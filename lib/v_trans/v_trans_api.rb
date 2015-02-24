require "uri"
require "rest_client"

module VTrans
  class TranslateApi
    GOOGLE_TRANSLATE_SERVICE_URL = "https://www.googleapis.com/language/translate/v2"

    def initialize text, from_lang, to_lang, api_key
      @from_lang = from_lang
      @to_lang = to_lang
      @text = text
      @api_key = api_key
    end

    def translate
      raise ("Missing 'from' language") unless @from_lang
      raise ("Missing 'to' language") unless @to_lang
      raise ("Missing 'text' for translation") unless @text
      raise ("Missing 'api key' for the serice") unless @api_key

      translated = trans_service @text, @from_lang, @to_lang, @api_key

      raise ("The server is down") unless translated || translated.empty?

      translated
    end

    private

    def trans_service text, from_lang, to_lang, api_key
      res = RestClient.get("https://www.googleapis.com/language/translate/v2?key=#{api_key}&source=#{from_lang}&target=#{to_lang}&q=#{text}")

      return JSON.parse(res)["data"]["translations"].first["translatedText"]
    end

  end
end
