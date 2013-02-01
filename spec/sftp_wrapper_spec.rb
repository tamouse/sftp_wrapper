require 'spec_helper'
require 'sftp_wrapper'
require 'net/sftp/errors'

module SftpWrapper
  describe SftpWrapper do
    it "is a Class" do
      SftpWrapper.should be_a(Class)
    end
    it "responds to #new" do
      SftpWrapper.should respond_to(:new)
    end
    it "raises an exception with nil parameters" do
      expect {SftpWrapper.new(nil,nil,nil)}.to raise_error(Net::SSH::AuthenticationFailed)
    end
    it "creates a connection" do
      testhost = 'localhost'
      testuser = 'testuser'
      testpass = 'testpass'
      conn = SftpWrapper.new(testhost, testuser, testpass)
      conn.should be_instance_of(SftpWrapper)
    end
  end
  
end