# ActiveMessenger

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activemessenger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activemessenger

## Usage

Write sub-class of `ActiveMessenger::Base` and put under `app/massengers/`
sub-class like...
```ruby
class ReportMessenger < ActiveMessenger::Base
  adapter :adapter_name

  # something action...
  # def all_report
  #   @reports = Report.all
  # end
end
```

Create messenger instance and call action on your code.

```ruby
messenger = ReportMessenger.new

messenger.send!("Hello, World") # Send message "Hello, World"

# comming soon...
# messenger.post!(:all_reoprt) # Rendering 'app/views/messengers/report/all_report.html.haml' and send it
```

## Configure
### Hipchat
Set class attributes
```ruby
class YourMessenger < ActiveMessenger::Base
  adapter :hipchat

  self.api_token = 'XXXXXXX'
  self.room_id   = 123456
  self.user_name = 'hoge'
end
```
Or write and put on config file

```yaml
# config/active_messenger.yml
development:
  hipchat:
    api_token: XXXXXXX
    room_id: 123456
    user_name: dev
production:
  hipchat:
    api_token: XXXXXXX
    room_id: 123456
    user_name: hoge
test:
  hipchat:
    api_token: XXXXXXX
    room_id: 123456
    user_name: test
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/activemessenger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
