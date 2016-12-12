require 'slack-ruby-bot'

class SlackTracker < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'ponging', channel: data.channel)
  end
end

SlackTracker.run
