class Bitfinex
  require 'open-uri'
  def self.ticker
    result = {}
    result['btcusd'] = JSON.load(open("https://api.bitfinex.com/v1/pubticker/btcusd/"))['mid']
    result['ethusd'] = JSON.load(open("https://api.bitfinex.com/v1/pubticker/ethusd/"))['mid']
    result['ltcusd'] = JSON.load(open("https://api.bitfinex.com/v1/pubticker/ltcusd/"))['mid']
    result
  end
end
