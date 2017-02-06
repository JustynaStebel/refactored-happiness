class P2PriceGenerator
  require 'nokogiri'
  require 'open-uri'

  def self.perform
    url = "http://time.com"
    page = Nokogiri::HTML(open(url))
    b_tags = page.css("b").size

    price = b_tags / 100
  end
end
