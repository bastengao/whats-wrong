# Whats::Wrong
Overriding Rails default static error pages for your locale.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'whats-wrong'
```

## Usage


#### Solution 1: Generate static pages for your locale

```ruby
rails g whats_wrong:pages zh-CN
# Creating pages for zh-CN ...
#       create  public/404.zh-CN.html
#       create  public/422.zh-CN.html
#       create  public/500.zh-CN.html
```

Supported locales: en, zh-CN.

#### Solution 2: or Render with dynamic error pages

Maybe static pages couldn't fit your necessary. Enable this feature If you want to render error pages with layout.

```ruby
rails g whats_wrong:install
```

Then the default error pages will be rendered within your layout.


##### Custom error pages

Also you can custom error pages(include 404, 422 and 500).

```html
<!-- app/views/exceptions/404.html.erb -->
<p>The page you were looking for doesn't exist.</p>


<!-- some helper methods you can use -->
<p><%= status %></p> <!-- 404 or others -->
<p><%= original_path %></p> <!-- which path case error before render error page -->
<p><%= exception %></p><!-- which exception case error -->
```

## Contributing
Contribution translations go here https://www.localeapp.com/projects/9397 .

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
