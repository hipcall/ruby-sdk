# Hipcall::Sdk

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hipcall/sdk`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hipcall-sdk'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hipcall-sdk

## Usage

```ruby
hipcall = Hipcall::Client.new(api_key: "YOUR_TOKEN_IS_HERE", version: "v20211124", base_url: "https://app.hipcall.com.tr/api/")

# Get all tasks
tasks = hipcall.tasks.list

# Get first task
first_task = hipcall.tasks.retrieve(task_id: 1)

# Create a task
new_task = hipcall.tasks.create(name: 'Lets email the contact')
```

## Development

We use Docker for dev env. 

```
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app -it ruby:3.0 HIPCALL_API_KEY=token
```

```
$ ./bin/

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hipcall-sdk.
