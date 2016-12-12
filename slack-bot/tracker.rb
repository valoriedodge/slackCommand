module SlackBot
  class Tracker < SlackRubyBot::Bot
    command 'ping' do |client, data, match|
      client.say(text: 'ponging', channel: data.channel)
    end
    
    on 'bot_added' do |client, data|
      # data['user']['id'] contains the user ID
      client.say(text: 'hello', channel: data.channel)
    end
  end
end
