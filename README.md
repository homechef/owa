# Owa (OpenWeatherApi)

This is yet another API client for the https://openweathermap.org. This implimentation aims for simplicity with small objects that are mostly closed for modification and are having one responsibility.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'owa'
```

And then execute:

    $ bundle
Or install it yourself as:

    $ gem install owa

You will need to initialize it after installation. If you are using this gem in a Rails application you can add the initialization in your `config/initializers/owa.rb`:

```ruby
Owa.configure do |config|
  config.api_url = "https://api.openweathermap.org/data/2.5"
  config.appid = "your_appid_from_owm_api"
  config.units = "metric"
end
```

## Usage

At this moment there are only two ways to use this client(more to be implemented soon):

- To get a weather by a City and Countrycode. CountryCode can be used optionally.

```ruby
Owa::Current.by_city("berlin", "DE")
# Or
Owa::Current.by_city("berlin")
```

- To get the weather by geocode.

```ruby
Owa::Current.by_geocode("80", "130")
```

Note that on the events that API response is not a desired weather report this client raises errors with some messages which can be used to handle the error events and lets users know what went wrong.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hosseintoussi/owa. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## What's next

- Integration tests
- More endpoints to be implemented from the OpenWeatherMap API
