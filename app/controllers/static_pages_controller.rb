class StaticPagesController < ApplicationController

  def home
    @forecast = get_weather
    @news_posts = NewsPost.all
  end

  def get_weather
    ForecastIO.api_key = '397e8622e11de93eb5f721bc5cd12c13'
    forecast = ForecastIO.forecast(47.6097, 122.3331)
    if forecast
      forecast.currently.summary
    else
      "< FORECAST DATA UNAVAILABLE >"
    end
  end

end
