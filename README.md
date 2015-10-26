# AdminLTE Rails
Gem wrapper to include the AdminLTE dashboard interface via the Rails 3.1 asset pipeline.

This gem provides extra features on top of AdminLTE. For example two of the most awesome features
are SASS/SCSS and RTL support for AdminLTE which does not exists in the original version. Also
this gem fetch and converts the original source code (mostly) so main credits goes to AdminLTE
contributors.

## Installation

Add this line to your application's Gemfile:

```ruby
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-rtl'
  gem 'rails-assets-jquery-knob'
  gem 'rails-assets-bootstrap-daterangepicker'
  gem 'rails-assets-jquery-sparkline'
  gem 'rails-assets-jquery-icheck'
  gem 'rails-assets-admin-lte'
end

gem 'admin_lte-rails'

```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install admin_lte

## Usage

To use the **admin_lte-rails** gem all you need to do is to require the related **admin_lte-rails** maniifest
in you application manifest. for example:

For ltr version of AdminLTE stylesheets add this to your `app/assets/stylesheets/application.css`:

```css
//= require admin_lte/ltr/admin_lte
```

and for the rtl version add this:

```css
//= require admin_lte/rtl/admin_lte
```

Also you need to add this into your `app/assets/javascripts/application.js`

```js
//= require admin_lte/admin_lte
```

**NOTE:** Default setting does not include the google font configuration so you have to add `Source Sans Pro` to your
project. I done this because I hate using online google font service. But if you like it you can simply add this line
before adding admin_lte into you manifest:

```css
//= require admin_lte/admin_lte_font
```

## Development
To create the latest version of AdminLTE only run `rake convert` in this gem. That's it.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Yellowen/admin_lte-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
