module SlackBot
  class Tracker < SlackRubyBot::Bot
    command 'ping' do |client, data, match|
      client.say(text: 'ponging', channel: data.channel)
    end
  
  end
end
