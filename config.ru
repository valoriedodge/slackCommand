# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
require ::File.expand_path('../slack-bot/tracker', __FILE__)

# $LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

# require 'slack-bot'
# require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackBot::Tracker.run
    SlackBot::MyServer.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Rails.application
run SlackBot::MyServer
