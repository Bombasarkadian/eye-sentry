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
