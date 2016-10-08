# Gem growl-rails

The gem `growl-rails` leverages the popular jQuery library `jquery.growl` to make flash messages come alive.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'growl-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install growl-rails

## Usage

Require the growl assets in your javascript/css files.

```javascript
//= require growl
```

```css
/*
*= require growl
*/
```

```sass
@import 'growl'
```


Set a flash message in rails.

```ruby
def create
  @user = User.new(user_params)
  if @user.save
    flash[:success] = "User created successfully"
    redirect_to user_path(@user)
  else
    flash[:error] = "Please check the errors below"
    render :new
  end
end
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JoshuaTyree/growl-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
