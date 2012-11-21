require 'thor'
class VanillaTest < Thor
  include ThorLogger
  def initialize(*args)
    super
    setup_logger(options)
  end
end