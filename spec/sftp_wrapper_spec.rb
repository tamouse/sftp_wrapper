require 'spec_helper'
require 'sftp_wrapper'

module SftpWrapper
  describe SftpWrapper do
    it "is a Class" do
      SftpWrapper.should be_a(Class)
    end
    it "responds to #new" do
      SftpWrapper.should respond_to(:new)
    end
  end
  
end