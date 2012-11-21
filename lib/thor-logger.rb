require 'thor'
require 'log4r'
require 'colorize'

module ThorLogger
  def logger

  end

  def self.included(base)

    base.class_option :color,   type:  :boolean,
                                desc:  "Output to screen in ANSI color?",
                                group:  :output,
                                default:  true

    base.class_option :logfile, type:  :string,
                                desc:  "Record Log info to FILE",
                                group:  :output,
                                aliases:  '-l'

    base.class_option :loglevel,type:  :string,
                                desc:  "Explicitly set Log Level[]",
                                group:  :output,
                                default:  :info

    base.class_option :silent,  type:  :boolean,
                                desc:  "Output only Fatal messages to console",
                                group:  :output,
                                default:  false,
                                aliases:  '-s'

    base.class_option :quiet,   type:  :boolean,
                                desc:  "Be less verbose. Ignored when --loglevel set",
                                group:  :output,
                                default:  false,
                                aliases:  '-q'

    base.class_option :verbose, type:  :boolean,
                                desc:  "Be more verbose. Ignored when --loglevel set",
                                group:  :output,
                                default:  false,
                                aliases:  '-v'

    base.class_option :debug,   type:  :boolean,
                                desc:  "Output extra info to aid debugging. Ignored when --loglevel set",
                                group:  :output,
                                default: false
  end

  def setup_logger(options)
    warn options.inspect
  end

end
