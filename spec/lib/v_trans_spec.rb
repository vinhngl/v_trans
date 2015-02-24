require "spec_helper"

describe VTrans do
  it "should raise an error if one of parameters is missing." do
    expect { VTrans.translate("hello", nil, "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo") }.to raise_error
    expect { VTrans.translate("hello", "en", nil, "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo") }.to raise_error
    expect { VTrans.translate(nil, "en", "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo") }.to raise_error
    expect { VTrans.translate("hello", "en", "vi", nil) }.to raise_error
  end

  it "should translate the text from one language to another language." do
    translated_text = VTrans.translate("hello", "en", "vi", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")
    expect(translated_text).to eq("xin chào")
  end
end
