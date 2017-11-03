class Bitstamp
  require 'open-uri'
  def self.ticker
    result = {}
    result['btcusd'] = JSON.load(open("https://www.bitstamp.net/api/v2/ticker/btcusd/"))['high']
    result['ethusd'] = JSON.load(open("https://www.bitstamp.net/api/v2/ticker/ethusd/"))['high']
    result['ltcusd'] = JSON.load(open("https://www.bitstamp.net/api/v2/ticker/ltcusd/"))['high']
    result
  end
end