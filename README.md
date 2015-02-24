# VTrans

[![Build Status](https://travis-ci.org/vinhnguyenleasnet/v_trans.svg?branch=master)](https://travis-ci.org/vinhnguyenleasnet/v_trans)

Translate the text from one language to another language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'v_trans'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install v_trans

## Usage

Please read the links:
- [Create the Google Translate API Key](http://support.smartling.com/hc/en-us/articles/203237753-How-can-I-create-a-Google-Translate-API-Key-)
- [Languages Code](http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)

```ruby
  $ require 'v_trans'
  $ VTrans("Hello everyone!", "en", "es", "AIzaSyCmt2Xnjn5In0RLu1MzF_KSOHlhlHUG9Vo")
  # "hola a todos!"
```

## Contributing

1. Fork it ( https://github.com/vinhnguyenleasnet/v_trans/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
