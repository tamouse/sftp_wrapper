require "sftp_wrapper/version"
require "net/sftp"


module SftpWrapper
  class SftpWrapper
    attr_reader :sftp
    def initialize(host,user,pw)
      begin
        @sftp = Net::SFTP.start(host,user, password: pw)
      rescue Net::SSH::AuthenticationFailed => e
        STDERR.puts "Net::SFTP Authentication Failed"
        raise e
      end
    end
    
    
  end
end
