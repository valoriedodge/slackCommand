module SlackBot
  class MyServer < SlackRubyBot::Server
    on 'hello' do |client, data|
      # data['user']['id'] contains the user ID
      client.say(text: 'hello', channel: data.channel)
    end
  end
end
