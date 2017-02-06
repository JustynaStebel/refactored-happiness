class P3PriceGenerator
  require 'open-uri'

  def self.perform
    url = "http://time.com"
    page = Nokogiri::HTML(open(url))
    nodes = page.xpath("//*").map(&:name).count

    price = nodes.to_f / 100
  end
end
