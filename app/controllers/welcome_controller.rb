class WelcomeController < ApplicationController
  
  def index
    @result = {'bitstamp' => Bitstamp.ticker,
               'bitfinex' => Bitfinex.ticker}

    respond_to do |format|
      format.html
      format.json { render json: @result }
    end
  end
end
