# Hipcall

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hipcall`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hipcall'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hipcall

## Usage

```ruby
require "hipcall_sdk"

hipcall = HipcallSdk::Client.new(api_key: "YOUR_TOKEN_IS_HERE", version: "v20211124", base_url: "https://app.hipcall.com.tr/api/")
```

### Cdr resource

```ruby
# List
cdrs = hipcall.cdrs.list

# Retrieve
year = 2022
mounth = 07
day = 07
cdr_uuid = "caedfd1b-25ec-447e-ad87-3b7eb3d358ea"
cdr = hipcall.cdrs.retrieve(year: year, mounth: mounth, day: day, cdr_uuid: cdr_uuid)
```

### Number resource

```ruby
# List
numbers = hipcall.numbers.list

# Retrieve
number = hipcall.numbers.retrieve(number_id: 1)
```

### Task resource

```ruby
# List
tasks = hipcall.tasks.list

# Retrieve
task = hipcall.tasks.retrieve(task_id: 1)

# Create
new_task = hipcall.tasks.create(name: 'Lets email the contact')
```

### User resource

```ruby
# List
users = hipcall.users.list

# Retrieve
user = hipcall.users.retrieve(user_id: 1)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hipcall/ruby-sdk .
