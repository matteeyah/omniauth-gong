[![Gem Version](https://badge.fury.io/rb/omniauth-gong.svg)](https://badge.fury.io/rb/omniauth-gong)

# OmniAuth Gong Strategy

Strategy to authenticate with Gong via OAuth2 in OmniAuth.

You can get your OAuth app client id and secret from - <https://us-55616.app.gong.io/company/api-authentication>

Gong OAuth app docs - <https://help.gong.io/hc/en-us/articles/360056677792-Create-an-app-for-Gong>

## Installation

Add to your `Gemfile`:

```ruby
gem 'omniauth-gong'
```

Then `bundle install`.

## Gong API Setup

* Go to [`https://us-55616.app.gong.io/company/api-authentication`](https://us-55616.app.gong.io/company/api-authentication)
* Follow the instructions in <https://help.gong.io/hc/en-us/articles/360056677792-Create-an-app-for-Gong>

## Usage

Here's an example for adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gong,
    Rails.application.credentials.dig(:gong, :client_id),
    Rails.application.credentials.dig(:gong, :client_secret),
    scope: 'api:calls:read:basic'
end
```

You can now access the OmniAuth Gong URL: `/auth/gong`

NOTE: While developing your application, if you change the scope in the initializer you will need to restart your app server.

## Configuration

You can configure several options, which you pass in to the `provider` method via a hash:

* `scope`: A space-separated list of permissions you want to request from the user.

Here's an example of a possible configuration 

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gong,
    Rails.application.credentials.dig(:gong, :client_id),
    Rails.application.credentials.dig(:gong, :client_secret),
    scope: 'api:calls:read:extensive api:calls:read:media-url'
end
```

## License

See [LICENSE](LICENSE)
