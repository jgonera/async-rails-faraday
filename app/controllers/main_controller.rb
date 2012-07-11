class MainController < ApplicationController
  @@url = 'http://juliuszgonera.com'
  @@path = '/test.txt'

  def em_http
    conn = Faraday.new @@url do |faraday|
      faraday.response :logger
      faraday.adapter :em_http
    end
    response = conn.get @@path
    render text: response.body
  end

  def em_synchrony
    conn = Faraday.new @@url do |faraday|
      faraday.response :logger
      faraday.adapter :em_synchrony
    end
    response = conn.get @@path
    render text: response.body
  end

  def net_http
    conn = Faraday.new @@url do |faraday|
      faraday.response :logger
      faraday.adapter :net_http
    end
    response = conn.get @@path
    render text: response.body
  end
end
