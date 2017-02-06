require 'open-uri'

class P1PriceGenerator

  def self.perform
    url = "http://time.com"
    page = Nokogiri::HTML(open(url))
    a_letters = page.to_s.scan(/a/).count

    price = a_letters.to_f / 100
  end
end
