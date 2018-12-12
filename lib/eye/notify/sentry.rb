require 'eye'
require 'eye/notify/sentry/version'

require 'raven/base'

module Eye
  class Notify
    class Sentry < Eye::Notify::Custom
      # Eye.config do
      #   sentry extra_context: { extra_value: 'foo' }
      #   contact :dev, :sentry, 'http://your-dsn@example.com/project-id'
      # end

      # not required, empty by default
      param :extra_context, Hash, false, {}

      def execute
        Raven.configure { |config| config.dsn = contact }
        Raven.capture_message(message_subject,
                              level: msg_level,
                              extra: extra_context)
      end
    end
  end
end
