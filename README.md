# Rubocop::ForbidCsvRead

This gem forbid `CSV.read` as an extension to RuboCop.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-forbid_csv_read' :github => 'kasei-san/rubocop-forbid_csv_read'
```

And then execute:

    $ bundle

## Usage

You need to tell RuboCop to load the RSpec extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```
require: rubocop-forbid_csv_read
```

Now you can run `rubocop` and it will automatically load the RuboCop RSpec
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-forbid_csv_read
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-forbid_csv_read'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rubocop-forbid_csv_read. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

