# Capistrano::Flowdock

Notify Flowdock flows about Capistrano deployments. These instructions are for
Capistrano 3. Check out [capistrano-2](https://github.com/flowdock/capistrano-flowdock/tree/capistrano-2) branch for Capistrano 2.x support.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-flowdock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-flowdock

## Usage

Load this gem in Capfile:

```ruby
# Capfile
require 'capistrano/flowdock'
```

Setup your Flowdock credentials in `deploy.rb`

```ruby
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
