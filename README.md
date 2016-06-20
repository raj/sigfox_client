# SigfoxClient

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/sigfox_client`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sigfox_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sigfox_client

## Usage
```ruby
sc = SigfoxClient::Client.new(SIGFOX_USERNAME,SIGFOX_PASSWORD)
sc.get_devicetypes.each do |dt|
  puts dt.to_json # output device type
  sc.get_devices(dt).each do |dd|
    puts dd.to_json # output device
    sc.get_messages(dd).each do |dm|
      puts dm.to_json # output message
    end
  end
end
```

## Development

## TODO

some tests


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/raj/sigfox_client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
