# Imgflip

Access the imgflip [Meme Generator API](https://api.imgflip.com/) to generate your own spicy memes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'imgflip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install imgflip

If you are going to make a lot of requests you will need to make your own imgflip account and set the environment variables `IMGFLIP_USERNAME` and `IMGFLIP_PASSWORD`.

## Usage

To return an array of the most popular memes with template_ids and name run:

```ruby
Imgflip.get_memes
```

For a list of `template_ids` you can also visit: https://api.imgflip.com/popular_meme_ids

To generate a meme and get the url run:

```ruby
Imgflip.caption_image(template_id, text0, text1)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/IngoAlbers/imgflip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Imgflip project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/imgflip/blob/master/CODE_OF_CONDUCT.md).
