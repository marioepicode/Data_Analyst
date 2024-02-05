import scrapy

class NewsTitleSpider(scrapy.Spider):
    name = 'NewsTitleSpider'
    allowed_domains = ['ansa.it']
    start_urls = ['https://www.ansa.it/']

    def parse(self, response):
        titles = response.css('h2::text').getall()
        for title in titles:
            yield {
                'title': title
            }
1