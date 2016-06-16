# Whats::Wrong
Overriding Rails default static error pages for your locale.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'whats-wrong'
```

## Usage


#### Generate static pages for your locale

```ruby
rails g whats_wrong:pages zh-CN
# Creating pages for zh-CN ...
#       create  public/404.zh-CN.html
#       create  public/422.zh-CN.html
#       create  public/500.zh-CN.html
```

Supported locales: en, zh-CN.

## Contributing
Contribution translations go here https://www.localeapp.com/projects/9397 .

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
