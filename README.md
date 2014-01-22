# html2json #

A ruby gem to scrape a url and renders into JSON. Use with Rails.

## Usage: ##
### Simple ###
In a Controller,
```ruby
news = Html2Json::Web.new("http://www.theguardian.com/uk")
render :json => news.pick("//div[@id='global-nav']//a")
```
output
```
    {
    "response": [
        "Subway to create 13,000 jobs as it doubles outlets in UK and Ireland",
        "South Sudan failed by misjudgment of international community, says UN chief",
        "Pensions opt-out should be scrapped, says thinktank"
    ]
}
```
You can have arbitary key instead of the default "response" key. Use,
```ruby
news.pick("//ul[@id='ticker']//li//a", 'breaking_news')
```
output
```
{
    "breaking_news": [
        "Subway to create 13,000 jobs as it doubles outlets in UK and Ireland",
        "South Sudan failed by misjudgment of international community, says UN chief",
        "Pensions opt-out should be scrapped, says thinktank"
        ]
    }
````
### Pick multiple parts from a webpage. ###
```ruby
news = Html2Json::Web.new("http://www.theguardian.com/uk")
news.pick("//ul[@id='ticker']//li//a", 'breaking_news')
news.pick("//div[@id='global-nav']//a", 'news_categories')
render :json => news.render
```		
output
```
{
    "breaking_news": [
        "Subway to create 13,000 jobs as it doubles outlets in UK and Ireland",
        "South Sudan failed by misjudgment of international community, says UN chief",
        "Pensions opt-out should be scrapped, says thinktank"
    ],
    "news_categories": [
        "News",
        "Sport",
        "Comment",
        "Culture"
    ]
}
```

Can use http://www.freeformatter.com/xpath-tester.html to test your xpath expressions.
