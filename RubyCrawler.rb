require 'nokogiri'
require 'open-uri'

class Crawler
    @@targer_uri = "https://www.taifex.com.tw/cht/3/totalTableDate"

    def main
        login()
    end

    def login
        request = Nokogiri::HTML(open( @@targer_uri ))
        
        puts request.xpath("//tr[@class='12bk']")
        # p request.xpath("//meta[@name='csrf-token']")[0].values[1]
    end
end

Crawler.new.main()