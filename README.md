
![build status](https://codeship.com/projects/90ad4cf0-c028-0132-c8c4-12477713df02/status?branch=master)

# OmniAuth Beach

This gem contains the Beach OAuth2 Strategy for OmniAuth.

## Installation

Add to your application's `Gemfile`:

```ruby
gem 'omniauth-beach'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Beach` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Beach uses the Doorkeeper gem to use NuAPI as an OAuth2 provider. This is necessary to gain access to the V3 endpoints of this API.  Developers can sign up for a developer account at https://developer.beach.co.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :beach, ENV['APPLICATION_ID'], ENV['CLIENT_SECRET']
end
```

You can now access the OmniAuth Beach OAuth2 URL: `/auth/beach`.

## Example

1. Clone this repo and `cd` into it
2. `bundle install`
3. `cd example`
4. Set ENV variables for APPLICATION_ID and CLIENT_SECRET
5. Set callback URI to `http://localhost:9292/auth/beach/callback` in your developer account at https://developer.beach.co.
6. `bundle exec rackup`
7. Open http://localhost:9292 in your browser and follow links
