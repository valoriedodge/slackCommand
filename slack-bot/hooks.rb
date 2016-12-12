require 'slack-ruby-bot/hooks'
require 'slack-ruby-bot/servers'

module SlackBot
  class MyServer < SlackRubyBot::Server
    on 'bot_added' do |client, data|
      # data['user']['id'] contains the user ID
      client.say(text: 'hello', channel: data.channel)
    end
  end
end
