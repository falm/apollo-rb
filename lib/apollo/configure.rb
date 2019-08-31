module Apollo

  extend ::Dry::Configurable

  setting :appid
  setting :namespace
  setting :env
  setting :cluster
  setting :ip

  setting :logger, ::Logger.new(STDOUT), reader: true do |logger|
    if %i(info debug warn error).all?(&(logger.method(:respond_to?)))
      logger
    else
      Logger.new(logger)
    end
  end

  def self.reset_config
    remove_instance_variable :@_config if instance_variable_defined? :@_config
  end

end