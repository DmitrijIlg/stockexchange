class WelcomeController < ApplicationController
  
  def index
    @result = {'bitstamp' => Bitstamp.ticker,
               'bitfinex' => Bitfinex.ticker}

    render plain: @result
  end
end
