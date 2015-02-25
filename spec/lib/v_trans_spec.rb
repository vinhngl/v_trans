require "spec_helper"

describe VTrans do
  it "should raise an error if one of parameters is missing." do
    expect{VTrans.translate("hello", nil, "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")}.to raise_error("Missing 'from' language")
    expect{VTrans.translate("hello", "en", nil, "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")}.to raise_error("Missing 'to' language")
    expect{VTrans.translate(nil, "en", "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")}.to raise_error("Missing 'text' for translation")
    expect{VTrans.translate("hello", "en", "vi", nil)}.to raise_error("Missing 'api key' for the service")
  end

  it "should raise an error if the language code is wrong" do
    expect{VTrans.translate("hello", "en", "vn", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")}.to raise_error("Please check paramaters. Maybe you're wrong languages code or api key. Thanks")
  end

  it "should translate the text from one language to another language." do
    translated_text = VTrans.translate("hello everyone", "en", "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")
    expect(translated_text).to eq("xin chào tất cả mọi người")
  end
end

