import scrapy

class WikipediaLinksSpider(scrapy.Spider):
    name = 'WikipediaLinksSpider'
    allowed_domains = ['wikipedia.org']
    start_urls = ['https://wikipedia.org/']

    def parse(self, response):
        links = response.css('a::attr(href)').getall()

        for link in links:
            yield {
                'link': link
            }

# scrapy crawl WikipediaLinksSpider -o links.csv