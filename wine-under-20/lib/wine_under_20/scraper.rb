class WineUnder20::Scraper

  def self.scrape_wines
    #wines = []
    doc = Nokogiri::HTML(open("https://www.binnys.com/wine//1/72#"))
    doc.search("div.row.result").each do |wine_div|
      wine = WineUnder20::Wine.new(name, price, url, description)
      wine.url = wine_div.search("h3.title").attr("href")
      wine.name = wine_div.search("h3.title").text.strip
      wine.price = wine_div.search("div.prodPrice.unitPrice.salePrice").text.sub /\s*\(.+\)$/, ''.strip
      wine.description = wine_div.search("div.shortReview").text.sub("Read more", "").strip

      #wines << wine
    end
    #wines

  end
end
