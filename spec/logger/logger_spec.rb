require 'spec_helper'
require 'sftp_wrapper/logger'

module SftpLogger

  describe SftpLogger do
    it "is a class" do
      SftpLogger.should be_a(Class)
    end
    it "responsds to new" do
      SftpLogger.should respond_to(:new)
    end
    it "creates a logger" do
      logger = SftpLogger.new
      logger.should be_instance_of(SftpLogger)
    end
  end
  describe "logging options" do

    let(:subject) { SftpLogger.new}

    it "prints an Info level message" do
      test_message = "Test Message from #{example.description}"
      $stderr.should_receive(:puts).with(test_message)
      subject.info test_message
    end
  end
  
end