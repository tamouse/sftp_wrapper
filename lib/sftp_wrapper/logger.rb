=begin

= SftpLogger - implement log4r for sftp-wrapper gem

=end

require 'log4r'

module SftpLogger
  include Log4r
  class SftpLogger
    attr_accessor :logger
    def initialize(options={})
      @logger = ::Log4r::Logger.new 'sftp-wrapper-log'
      @logger.outputters = Log4r::StderrOutputter.new 'stderr-log'
      @logger.level = options[:level] ||= Log4r::INFO
    end

    def info(message=nil,&blk)
      unless message.nil?
        @logger.info(message)
      else
        @logger.info &blk
      end
    end
  end # of class SftpLogger
end # of module SftpLogger