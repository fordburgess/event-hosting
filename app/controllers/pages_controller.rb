class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @featured_venues = Venue.where(featured: true)

    puts @featured_venues

    ip = request.remote_ip
    # ip = '8.8.8.8'
    @location = IpapiService.get_location(ip)

    user_lat = @location["latitude"]
    user_long = @location["longitude"]
    @city = "#{@location["city"]}, #{@location["country_name"]}"

    max_distance = 50000

    venues_near_user = []
    Venue.find_each do |venue|
      venue_lat = venue.latitude
      venue_long = venue.longitude

      distance = haversine_formula(user_lat, user_long, venue_lat, venue_long)

      if distance <= max_distance
        venues_near_user << venue
      end
    end

    @nearby_venues = venues_near_user
  end

  def haversine_formula(user_lat, user_long, venue_lat, venue_long)
    rad_per_deg = Math::PI / 180
    rkm = 6371
    rm = rkm * 1000

    dlat = (venue_lat - user_lat) * rad_per_deg
    dlon = (venue_long - user_long) * rad_per_deg

    a = Math.sin(dlat / 2)**2 + Math.cos(user_lat * rad_per_deg) * Math.cos(venue_lat * rad_per_deg) * Math.sin(dlon / 2)**2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    rm * c
  end

end
