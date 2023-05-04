class HomeController < ApplicationController  
  STRAPI_URL = 'http://localhost:1337'

  def home
    home_page = HTTParty.get(STRAPI_URL + '/api/home-page?populate=deep')
    @dynamic_components = home_page['data']['attributes']['components']

    puts @dynamic_components
  end
end
