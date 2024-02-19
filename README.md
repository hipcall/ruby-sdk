# Hipcall

Welcome to your new gem! In this directory, you'll find the files 
you need to be able to package up your Ruby library into a gem. 
Put your Ruby code in the file `lib/hipcall`. To experiment with 
that code, run `bin/console` for an interactive prompt.

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

hipcall = HipcallSdk::Client.new(
    api_key: "YOUR TOKEN IS HERE", 
    version: "v3", 
    base_url: "https://use.hipcall.com/api/"
)
```

### Call resource

```ruby
# List
calls = hipcall.calls.list(limit: 10, offset: 0, sort: "started_at.asc,user_id.desc_nulls_last")

# Retrieve
year = 2022
mounth = 07
day = 07
call_uuid = "caedfd1b-25ec-447e-ad87-3b7eb3d358ea"
call = hipcall.calls.retrieve(year: year, mounth: mounth, day: day, call_uuid: call_uuid)
```

### Company resource

#### Add tags to company

```ruby
# Add tags to company
tags = hipcall.companies.create_tags(company_id: 1, tags: ["tag1", "tag2"]);
```

#### Remove a tag from company

```ruby
# Remove a tag from company
hipcall.companies.delete_tags(company_id: 1, tag_id: 1);
```

#### Add comment to company

```ruby
# Add tags to company
comment = hipcall.companies.create_tags(company_id: 4, content: "Hello world!");
```

### Contact resource

#### Add tags to contact

```ruby
# Add tags to contact
tags = hipcall.contacts.create_tags(contact_id: 1, tags: ["tag1", "tag2"]);
```

#### Remove a tag from contact

```ruby
# Remove a tag from contact
hipcall.contacts.delete_tags(contact_id: 1, tag_id: 1);
```

#### Add comment to contact

```ruby
# Add tags to contact
comment = hipcall.contacts.create_tags(contact_id: 4, content: "Hello world!");
```

### Extension resource

```ruby
# List
extensions = hipcall.extensions.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
extension = hipcall.extensions.retrieve(extension_id: 1234)
```

### Greetings resource

```ruby
# List
greetings = hipcall.greetings.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
greeting = hipcall.greetings.retrieve(greeting_id: 1)
```

### Number resource

```ruby
# List
numbers = hipcall.numbers.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
number = hipcall.numbers.retrieve(number_id: 2)
```

### Task resource

```ruby
# List
tasks = hipcall.tasks.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
task = hipcall.tasks.retrieve(task_id: 1)

# Create
new_task = hipcall.tasks.create(name: 'Lets email the contact')
```

### Team resource

```ruby
# List
teams = hipcall.teams.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
team = hipcall.teams.retrieve(team_id: 1)
```

### User resource

```ruby
# List
users = hipcall.users.list(limit: 10, offset: 0, sort: "id.asc")

# Retrieve
user = hipcall.users.retrieve(user_id: 1)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hipcall/ruby-sdk .

### Some useful commands

```
rake test
rake build
sudo gem install --local pkg/hipcall-X.X.X.gem
gem push pkg/hipcall-x.x.x.gem
```

For local development

```ruby
require "hipcall_sdk"

hipcall = HipcallSdk::Client.new(
    api_key: "g2gDbQAAACQwMDZiYzA4Ni00OGI4LTRjMGItYjQxNy01MzAzNWFjZDVjOGFuBgBfEMd9jQFiAeNPSA.v4O0DvJ9IbzH_GOk6Uo4XpXPNpuM9GF4WvxqKmHB7Is", 
    version: "v3", 
    base_url: "http://localhost:4000/api/"
)
```
