# Capistrano::Flowdock

Notify Flowdock flows about Capistrano deployments. This branch works with
Capistrano 2.x.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-flowdock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-flowdock

## Usage

Load `capistrano-flowdock` in Capistrano `deploy.rb` file and set Flowdock API
tokens and project configuration.

```ruby
require 'capistrano-flowdock'

set :flowdock_api_token, "_YOUR_API_TOKEN_HERE"
set :flowdock_project_name, "My project" # Optional, defaults to application
set :flowdock_deploy_tags, ["deploy"] # Optional, defaults to ["deploy"]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
