gap_intelligence
=======

A Ruby interface to the gap intelligence API.

gap intelligence provides the world's most powerful companies with tactical and up to the minute market intelligence.

> gap intelligence’s core market intelligence services are widely regarded as the most
> timely, comprehensive, and easy-to-use tools for manufacturers to keep a close eye
> on the market

## Installation

Add this line to your application's Gemfile:

    gem 'gap_intelligence', git: 'git@github.com:GapIntelligence/gapintelligence-gem.git'

And then execute:

    $ bundle

Or install it yourself by:

    $ git clone git@github.com:GapIntelligence/gapintelligence-gem.git
    $ bundle
    $ bundle exec rake install

## Usage

```
require 'gap_intelligence'

g = GapIntelligence::Client.new
g.client_id = "YOUR CLIENT ID HERE"
g.client_secret = "YOUR CLIENT SECRET HERE"

g.pricings
```

## Contributing

1. Clone it ( git@github.com:GapIntelligence/gapintelligence-gem.git )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
