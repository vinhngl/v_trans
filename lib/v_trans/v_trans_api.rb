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
      if @text && @from_lang && @to_lang && @api_key
        translated = trans_service @text, @from_lang, @to_lang, @api_key

        if translated
          body = JSON.parse(translated)["data"]["translations"].pop
          result = body["translatedText"]
        else
          raise("Please check paramaters. Maybe you're wrong languages code or api key. Thanks")
        end

        return result
      else
        raise("Missing 'from' language") unless @from_lang
        raise("Missing 'to' language") unless @to_lang
        raise("Missing 'text' for translation") unless @text
        raise("Missing 'api key' for the service") unless @api_key
      end
    end

    private

    def trans_service text, from_lang, to_lang, api_key
      full_url = URI.encode(GOOGLE_TRANSLATE_SERVICE_URL + "?key=#{api_key}&source=#{from_lang}&target=#{to_lang}&q=#{text}")

      RestClient.get(full_url){ |response|
        if response.code == 200
          res = response.body
          return res
        else
          nil
        end
      }
    end

  end
end

