# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'slack-ruby-bot'
require 'slack-bot/commands/calculate'
require 'slack-bot/tracker'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run SlackBot::Web
