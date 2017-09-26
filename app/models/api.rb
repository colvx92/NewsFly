class Api
  def self.articles(source)
    url = "https://newsapi.org/v1/articles?source=#{source}&apiKey=#{ENV["API_KEY"]}"
    return HTTParty.get(url).parsed_response["articles"]
  end
end
