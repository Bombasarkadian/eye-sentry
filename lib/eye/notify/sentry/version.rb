module Eye
  class Notify
    class Eye::Notify::Custom < Eye::Notify; end

    class Sentry < Eye::Notify::Custom
      VERSION = "0.1.0"
    end
  end
end
