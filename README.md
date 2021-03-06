# Partridge

Partridge is the gem for the shared pairtree for Yale Library's Digital Collections projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'partridge'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install partridge

## Usage

This method takes an oid as an integer and returns a path as a string.
```ruby
Partridge::Pairtree.oid_to_pairtree(oid)
```
```bash
> Partridge::Pairtree.oid_to_pairtree(123456)
=> "56/12/34/56"
```

### Sample implementation
```ruby
def self.remote_ptiff_path(oid)
  pairtree_path = Partridge::Pairtree.oid_to_pairtree(oid)
  File.join("ptiffs", pairtree_path, "#{oid}.tif" )
end
```

```bash
> self.remote_ptiff_path(123456)
=> "ptiffs/56/12/34/56/123456.tif"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Put your Ruby code in the file `lib/partridge`.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Running the tests

After setting up the gem, as above, run the rspec tests by running `bundle exec rspec`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yalelibrary/yul-dc-partridge.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
