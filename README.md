# Dmmyix

A dummy of [Imgix](https://www.imgix.com/) for Rails applications.

## Usage

Add this routing to your `routes.rb`:

```rb
Rails.application.routes.draw do
  mount Dmmyix::Engine, at: "/dmmyix" if Rails.env.development?
end
```

## Installation

Add this line to your application's Gemfile:

```rb
gem "dmmyix"
```

And then execute:

```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
