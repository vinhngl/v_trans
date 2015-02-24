require "spec_helper"

describe VTrans do
  it "should raise an error if one of parameters is missing." do
    expect { VTrans.translate("hello world", nil, "vn") }.to raise_error
    expect { VTrans.translate("hello world", "en", nil) }.to raise_error
    expect { VTrans.translate(nil, "en", "vi") }.to raise_error
  end

  it "should translate the text from one language to another language." do
    translated_text = VTrans.translate("hello world", "en", "vn")
    expect (translated_text).to eq("xin chào thế giới")
  end
end
