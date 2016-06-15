require 'whats-wrong/engine'

module WhatsWrong
  mattr_reader :enabled

  def self.enabled=(_enabled)
    @@enabled = _enabled

    if _enabled
      Rails.application.config.exceptions_app = ->(env) { ExceptionsController.action(:show).call(env) }
    end
  end
end
