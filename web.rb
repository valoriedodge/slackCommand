require 'sinatra/base'

module SlackBot
  class Web < Sinatra::Base
    get '/' do
      'Slack is good for you.'
    end
  end
end
