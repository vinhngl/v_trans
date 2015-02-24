require "v_trans/version"
require "v_trans/v_trans_api"

module VTrans
  def self.translate text, from_lang, to_lang, api_key
    TranslateApi.new(text, from_lang, to_lang, api_key).translate
  end
end
