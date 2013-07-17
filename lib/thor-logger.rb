class Thor
  module Shell
    class BasicLogger < Basic
      alias_method :say_status_orig, :say_status

      def say_status(status, message, log_status = true)
        logger.send(status, message)
        super(status, message, log_status)
      end

      def logger
        @@logger
      end
    end

    class ColorLogger < Color
      alias_method :say_status_orig, :say_status

      def say_status(status, message, log_status = true)
        logger.send(status, message)
        super(status, message, log_status)
      end

      def logger
        raise
        @@logger
      end
    end
  end
end

require 'logger'
module Lightning
  class Logger

    def self.setup(filename = "/tmp/lightning.txt", log_level = ::Logger::INFO)
      logger = ::Logger.new(filename)
      logger.level = log_level
      logger.datetime_format = '%Y-%m-%d %H:%M:%S'
      logger.formatter = proc do |severity, datetime, prog_name, msg|
        "#{datetime.strftime(logger.datetime_format)} #{severity}: #{msg}\n"
      end

      logger
    end
  end

end

class Thor
  module Shell
    class BasicLogger < Basic
      alias_method :say_status_orig, :say_status
      def say_status(status, message, log_status = true)
        spaces = "  " * padding
        $logger.send(status, spaces + message)
        say_status_orig(status, message, color_for(status, log_status))
      end

      def error(statement)
        say_status(:error, statement, :red) if @base.output?
        exit(1)
      end

      def color_for(status, log_status)
        return log_status unless log_status
        case status.to_s
          when "debug"
            :blue
          when "info"
            :green
          when "warn"
            :yellow
          when "error"
            :red
          else
            log_status
        end
      end
    end
  end
end