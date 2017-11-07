class UserController < ApplicationController
  def index

    @sources = [["ABC News (AU)", "abc-news-au"], ["Al Jazeera English", "al-jazeera-english"], ["Ars Technica", "ars-technica"], ["Associated Press", "associated-press"], ["BBC News", "bbc-news"], ["BBC Sport", "bbc-sport"], ["Bild", "bild"], ["Bloomberg", "bloomberg"], ["Breitbart News", "breitbart-news"], ["Business Insider", "business-insider"], ["Business Insider (UK)", "business-insider-uk"], ["Buzzfeed", "buzzfeed"], ["CNBC", "cnbc"], ["CNN", "cnn"], ["Daily Mail", "daily-mail"], ["Der Tagesspiegel", "der-tagesspiegel"], ["Die Zeit", "die-zeit"], ["Engadget", "engadget"], ["Entertainment Weekly", "entertainment-weekly"], ["ESPN", "espn"], ["ESPN Cric Info", "espn-cric-info"], ["Financial Times", "financial-times"], ["Focus", "focus"], ["Football Italia", "football-italia"], ["Fortune", "fortune"], ["FourFourTwo", "four-four-two"], ["Fox Sports", "fox-sports"], ["Google News", "google-news"], ["Gruenderszene", "gruenderszene"], ["Hacker News", "hacker-news"], ["Handelsblatt", "handelsblatt"], ["IGN", "ign"], ["Independent", "independent"], ["Mashable", "mashable"], ["Metro", "metro"], ["Mirror", "mirror"], ["MTV News", "mtv-news"], ["MTV News (UK)", "mtv-news-uk"], ["National Geographic", "national-geographic"], ["New Scientist", "new-scientist"], ["Newsweek", "newsweek"], ["New York Magazine", "new-york-magazine"], ["NFL News", "nfl-news"], ["Polygon", "polygon"], ["Recode", "recode"], ["Reddit /r/all", "reddit-r-all"], ["Reuters", "reuters"], ["Spiegel Online", "spiegel-online"], ["T3n", "t3n"], ["TalkSport", "talksport"], ["TechCrunch", "techcrunch"], ["TechRadar", "techradar"], ["The Economist", "the-economist"], ["The Guardian (AU)", "the-guardian-au"], ["The Guardian (UK)", "the-guardian-uk"], ["The Hindu", "the-hindu"], ["The Huffington Post", "the-huffington-post"], ["The Lad Bible", "the-lad-bible"], ["The New York Times", "the-new-york-times"], ["The Next Web", "the-next-web"], ["The Sport Bible", "the-sport-bible"], ["The Telegraph", "the-telegraph"], ["The Times of India", "the-times-of-india"], ["The Verge", "the-verge"], ["The Wall Street Journal", "the-wall-street-journal"], ["The Washington Post", "the-washington-post"], ["Time", "time"], ["USA Today", "usa-today"], ["Wired.de", "wired-de"], ["Wirtschafts Woche", "wirtschafts-woche"]]

    unless params[:source].blank?
      parsed = params[:source].split.join('-')
      @articles = Api.articles(parsed)
    end
  end

  def show
    @articles = current_user.saved_articles
  end

end
