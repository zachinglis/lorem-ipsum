require 'net/http'
require 'open-uri'

class LoremIpsum
  # Our defacto method.
  #
  # All arguments are optional
  #
  #   :language => XML, JSON or text
  #   :format => Plain or HTML
  #   :type => Essay or Blog
  #
  def self.generate(options = {})
    options[:language]  ||= "text" # XML, JSON or Text
    options[:format]    ||= "plain" # Plain or HTML
    options[:type]      ||= "essay" # Essay or Blog

    # http://lorem-ipsum.me/api/xml?format=plain&type=blog
    uri       = "http://lorem-ipsum.me/api/#{options[:language]}?format=#{options[:format]}&type=#{options[:type]}"
    request   = URI.parse(uri)
    response  = Net::HTTP.get_response(request).body
  end
end
