# Eye::Sentry

Sentry reporter for eye process monitoring.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eye'
gem 'eye-sentry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eye-sentry

## Usage

this is an example configuration file

````
# Notify example
require 'eye/notify/sentry'

Eye.config do
  sentry extra_context: { some_value: 'foo' }
  contact :dev, :sentry, 'http://your-dsn@example.com/project-id'
  logger '/tmp/eye.log'
end

Eye.application 'test' do
  notify :dev, :debug
  stdall '/tmp/eye-example.log'

  process :some_process do
    start_command 'sleep 120'
    daemonize true
    pid_file '/tmp/sleep.pid'
  end
end
````

**NOTE** You need to quit eye and load it back after adding `require`.

# Configuration

* add `sentry` line to `Eye.config` section and check following parameters
 * `extra_context` - hash with any additional data you want to have reported

* add `contact` line to `Eye.config` and pass your project DSN as the third argument

## Contributing

1. Fork it ( https://github.com/bombasarkadian/eye-sentry/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
